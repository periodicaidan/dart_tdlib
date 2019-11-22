/// /lib/src/td_json_client.dart
///
/// C- and Dart-side typedefs for each of the functions in
/// td/telegram/td_json_client.h. The C versions are in snake_case and are
/// prefixed by "td_". In some cases the C and Dart typedefs have the same
/// signature; both are kept for the sake of consistency.
///
/// This file also exports a class [JsonClient], which wraps the td_json_client
/// functions in an interface that is safe, easy-to-use, and idiomatically Dart.

import "dart:convert";
import "dart:ffi";

import "package:ffi/ffi.dart";

import "utils.dart";

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

  // If the client is inactive (if [destroy] has been called), further calls
  // to this class' methods will fail
  bool active;

  // Private pointers to native functions, so they don't have to be looked up
  // for each API call
  JsonClientCreate _jsonClientCreate;
  JsonClientSend _jsonClientSend;
  JsonClientReceive _jsonClientReceive;
  JsonClientExecute _jsonClientExecute;
  JsonClientDestroy _jsonClientDestroy;

  JsonClient.create(String dlDir) {
    // Get the path to the td_json_client dynamic library
    final dlPath = platformPath(dlDir);

    final dylib = DynamicLibrary.open(dlPath);

    // Get the td_json_client_create function from the dylib and create a client
    _jsonClientCreate = dylib
      .lookupFunction<td_json_client_create, JsonClientCreate>("td_json_client_create");
    _jsonClientSend = dylib
      .lookupFunction<td_json_client_send, JsonClientSend>("td_json_client_send");
    _jsonClientReceive = dylib
      .lookupFunction<td_json_client_receive, JsonClientReceive>("td_json_client_receive");
    _jsonClientDestroy = dylib
      .lookupFunction<td_json_client_destroy, JsonClientDestroy>("td_json_client_destroy");
    _jsonClientExecute = dylib
      .lookupFunction<td_json_client_execute, JsonClientExecute>("td_json_client_execute");

    _client = _jsonClientCreate();
    active = true;
  }

  /// If the client is not [active] then this throws an [Exception].
  void assertActive() {
    if (!active) {
      throw Exception("Telegram JSON client has been closed.");
    }
  }

  /// Send a request to the Telegram API
  /// This is an async version of [execute], which the TDLib docs don't make
  /// immediately clear :p
  void send(Map<String, dynamic> request) {
    assertActive();
    var reqJson = json.encode(request);
    _jsonClientSend(_client, Utf8.toUtf8(reqJson));
  }

  /// Receive the API's response
  Map<String, dynamic> receive([double timeout = 2.0]) {
    assertActive();
    final response = _jsonClientReceive(_client, timeout);
    final resString = Utf8.fromUtf8(response);
    return json.decode(resString);
  }

  /// Execute a TDLib function synchronously
  /// If you need to execute a function asynchronously (for example, you get an
  /// error along the lines of "Function can't be executed synchronously"), use
  /// [send] instead.
  Map<String, dynamic> execute(Map<String, dynamic> request) {
    assertActive();
    final result = _jsonClientExecute(_client, Utf8.toUtf8(json.encode(request)));
    var resJson = Utf8.fromUtf8(result);
    return json.decode(resJson);
  }

  /// Destroy the client
  void destroy() {
    assertActive();
    _jsonClientDestroy(_client);
    active = false;
  }
}