/**
 * /lib/src/td_json_client.dart
 *
 * C- and Dart-side typedefs for each of the functions in
 * td/telegram/td_json_client.h. The C versions are in snake_case and are
 * prefixed by "td_". In some cases the C and Dart typedefs have the same
 * signature; both are kept for the sake of consistency.
 *
 * This file also exports a class [JsonClient], which wraps the td_json_client
 * functions in an interface that is safe, easy-to-use, and idiomatically Dart.
 */

import "dart:ffi";
import "dart:convert";
import "dart:io" show Platform;
import "package:ffi/ffi.dart";
import "package:path/path.dart" as path;
import "utils.dart";
import "api/base_classes.dart";

/// Creates a new instance of TDLib client.
///
/// void *td_json_client_create(void);
typedef Pointer<Void> td_json_client_create();
typedef Pointer<Void> JsonClientCreate();

/// Sends request to the TDLib client.
///
/// void td_json_client_send(void *client, const chat *request);
typedef Void td_json_client_send(Pointer<Void> client, Pointer<Utf8> request);
typedef void JsonClientSend(Pointer<Void> client, Pointer<Utf8> request);

/// Receives incoming updates and request responses from the TDLib client.
///
/// const char *td_json_client_receive(void *client, double timeout);
typedef Pointer<Utf8> td_json_client_receive(Pointer<Void> client, Double timeout);
typedef Pointer<Utf8> JsonClientReceive(Pointer<Void> client, double timeout);

/// Synchronously executes TDLib request.
///
/// const char *td_json_client_execute(void *client, const char* request);
typedef Pointer<Utf8> td_json_client_execute(Pointer<Void> client, Pointer<Utf8> request);
typedef Pointer<Utf8> JsonClientExecute(Pointer<Void> client, Pointer<Utf8> request);

/// Destroys the TDLib client instance.
///
/// void td_json_client_destroy(void *client);
typedef Void td_json_client_destroy(Pointer<Void> client);
typedef void JsonClientDestroy(Pointer<Void> client);

/// Represents a Telegram client that sends and receives JSON data.
class JsonClient {
  Pointer<Void> _client;
  DynamicLibrary _dylib;
  // If the client is inactive (if [destroy] has been called), further calls
  // to this class' methods will fail with an assertion error
  bool active;

  JsonClient.create(String dlDir) {
    // Get the path to the td_json_client dynamic library
    final dlPath = platformPath(dlDir);

    _dylib = DynamicLibrary.open(dlPath);

    // Get the td_json_client_create function from the DL and create a client
    final jsonClientCreate = _dylib
        .lookupFunction<td_json_client_create, JsonClientCreate>("td_json_client_create");

    _client = jsonClientCreate();
    active = true;
  }

  /// Send a request to the Telegram API
  send(Map<String, dynamic> request) {
    assert (active);
    var reqJson = json.encode(request);
    final jsonClientSend = _dylib
        .lookupFunction<td_json_client_send, JsonClientSend>("td_json_client_send");

    jsonClientSend(_client, Utf8.toUtf8(reqJson));
  }

  /// Receive the API's response
  Map<String, dynamic> receive([double timeout = 2.0]) {
    assert (active);
    final jsonClientReceive = _dylib
        .lookupFunction<td_json_client_receive, JsonClientReceive>("td_json_client_receive");

    final response = jsonClientReceive(_client, timeout);
    final resString = Utf8.fromUtf8(response);

    return json.decode(resString);
  }

  /// Execute a TDLib request synchronously
  /// TODO: Make it asynchronous, if possible
  Map<String, dynamic> execute(Map<String, dynamic> request) {
    assert (active);
    final jsonClientExecute = _dylib
        .lookupFunction<td_json_client_execute, JsonClientExecute>("td_json_client_execute");

    final result = jsonClientExecute(_client, Utf8.toUtf8(json.encode(request)));
    var resJson = Utf8.fromUtf8(result);
    return json.decode(resJson);
  }

  /// Destroy the client
  destroy() {
    assert (active);
    final jsonClientDestroy = _dylib
        .lookupFunction<td_json_client_destroy, JsonClientDestroy>("td_json_client_destroy");

    jsonClientDestroy(_client);
    active = false;
  }
}