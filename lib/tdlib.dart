library tdlib;

import "dart:async";

import "src/td_json_client.dart" show JsonClient;
import "src/api/base_classes.dart";
import "src/api/objects.dart" hide Error;
import "src/api/objects.dart" as td_objs show Error;
import "src/api/functions.dart";
import "src/api/utils.dart";

export "src/td_json_client.dart" show JsonClient;
export "src/api/base_classes.dart";
export "src/api/objects.dart";
export "src/api/functions.dart";
export "src/api/utils.dart" show classIndex;

class Client {
  final JsonClient _jsonClient;

  Client(String dlDir) : _jsonClient = JsonClient.create(dlDir);
  Client.fromExisting(this._jsonClient);

  Future start(
    int apiKey,
    String apiHash,
    String databaseDir,
    String deviceModel,
    String systemVersion,
    String applicationVersion,
    [bool useMessageDatabase = false,
    bool useSecretChats = false,
    String systemLanguageCode = "en-US",]
  ) async {
    var event = await receive();
    if (TlObject.isError(event)) {
      throw TlError(event);
    }

    if (event is UpdateOption) {
      //
    }

    event = await receive();
    if (TlObject.isError(event)) {
      throw TlError(event);
    }

    if (event is UpdateAuthorizationState) {
      if (event.authorizationState is AuthorizationStateWaitTdlibParameters) {
        var setTdLibParams = SetTdlibParameters(
          TdlibParameters({
            "api_id": apiKey,
            "api_hash": apiHash,
            "database_directory": databaseDir,
            "use_message_database": useMessageDatabase,
            "use_secret_chats": useSecretChats,
            "system_language_code": systemLanguageCode,
            "device_model": deviceModel,
            "system_version": systemVersion,
            "application_version": applicationVersion,
          })
        );
        await execute(setTdLibParams);
      }
    } else {
      throw Exception("First message must must be `updateAuthorizationState`. Got `${event.tdType}`.");
    }

    event = await receive();
    if (TlObject.isError(event)) {
      throw TlError(event);
    }

    if (event is UpdateAuthorizationState) {
      if (event.authorizationState is AuthorizationStateWaitEncryptionKey) {
        var checkDatabaseEncryptionKey = CheckDatabaseEncryptionKey("");
        await execute(checkDatabaseEncryptionKey);
      }
    }
  }

  Future<TdObject> receive([double timeout = 2.0]) async =>
    await tryParse(_jsonClient.receive(timeout)) as TdObject;

  /// TODO
  Stream<TdObject> incoming([double timeout = 2.0]) async* {
    yield* Stream.empty();
  }

  Future<void> execute(TdFunction request) async =>
    _jsonClient.send(request.serialize());

  void executeSync(TdFunction request) =>
    _jsonClient.execute(request.serialize());

  Future<void> close() async => _jsonClient.destroy();
}

class TlError extends Error {
  final int code;
  final String message;

  @override
  String toString() {
    return "TDLib threw an error: $code - $message";
  }

  TlError(td_objs.Error error) :
    this.code = error.code,
    this.message = error.message;
}