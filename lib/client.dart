import "dart:async";

import 'package:meta/meta.dart';
import "package:rxdart/rxdart.dart";

import "src/td_json_client.dart" show JsonClient;
import "src/api/base_classes.dart";
import "src/api/functions.dart";
import "src/api/objects.dart";
import "src/api/utils.dart" show tryConvertToTdObject;

/// A controller that handles incoming requests asynchronously and exposes
/// [Observable]s that stream data to their listeners.
class TelegramClient with AsyncClient {
  final JsonClient _client;
  BehaviorSubject<Update> _updates = BehaviorSubject();

  /// All [Update] objects received by the client are put into a
  /// [BehaviorSubject] whose [Stream] is exposed to other parts of the
  /// application. This way updates can be listened to, filtered, mapped, and
  /// Flutter widgets can rebuild in response to them with a StreamBuilder.
  Stream<Update> get updates => _updates.stream;

  /// A convenience getter that streams [AuthorizationState]s. It does this by
  /// filtering for [updates] that are [UpdateAuthorizationState]s and yields
  /// the new authorization state.
  Stream<AuthorizationState> get authorizationState =>
    updates
      .where((u) => u is UpdateAuthorizationState)
      .map((a) => (a as UpdateAuthorizationState).authorizationState);

  TdlibParameters tdlibParams;

  TelegramClient(String tdLibDir): _client = JsonClient.create(tdLibDir);

  /// Generates a [Stream] of incoming [TdObject]s that the client receives.
  /// Objects of the appropriate type are added to their respective
  /// [BehaviorSubject]s (for example, [Update]s are added to [_updates]).
  Stream<TdObject> incoming() async* {
    while (true) {
      var obj = await receive();

      if (obj is Update) {
        _updates.add(obj);
      }

      yield obj;
    }
  }

  /// Asynchronously performs any necessary cleanup before [destroy]ing this
  /// client.
  Future<void> close() async {
    await _updates.close();
    await destroy();
  }

  /// Sets this client's [tdlibParams] by taking keyword-arguments (some of
  /// which have defaults) that represent the fields of [TdlibParameters].
  void setTdLibParams({
    @required int apiId,
    @required String apiHash,
    bool useMessageDatabase = true,
    String databaseDirectory,
    String systemLanguageCode = "en-US", // TODO: l10n
    @required String deviceModel,
    @required String systemVersion,
    String applicationVersion = "0.0.1",
    bool enableStorageOptimizer = true,
    bool useSecretChats = true,
  }) {
    // Sets the default path for the databaseDirectory
    if (databaseDirectory == null && useMessageDatabase) {
      databaseDirectory = "tdb";
    }

    tdlibParams = TdlibParameters({
      "api_id": apiId,
      "api_hash": apiHash,
      "use_message_database": useMessageDatabase,
      "database_directory": databaseDirectory,
      "system_language_code": systemLanguageCode,
      "device_model": deviceModel,
      "system_version": systemVersion,
      "application_version": applicationVersion,
      "enable_storage_optimizer": enableStorageOptimizer,
      "use_secret_chats": useSecretChats,
    });
  }
}

/// Wraps the [JsonClient] and executes its methods asynchronously. A few names
/// are different for convenience of use.
///
/// This mixin isn't strictly necessary--it could just go right in the
/// [TelegramClient]--but I wanted to separate the logic for fetching and
/// sending data from/to the Telegram API and the procedures that delegate that
/// data, just for code organization purposes.
class AsyncClient {
  final JsonClient _client;

  factory AsyncClient._() => null;

  /// Receives a request from TD and parses it as a [TdObject]
  Future<TdObject> receive([double timeout = 2.0]) async =>
    tryConvertToTdObject(_client.receive(timeout)) as TdObject;

  /// Sends an asynchronous request to TD
  Future<void> send(TdFunction request) async =>
    _client.send(request.serialize());

  /// Executes a synchronous request
  Map<String, dynamic> executeSync(TdFunction request) =>
    _client.execute(request.serialize());

  /// Executes a synchronous request asynchronously o_O
  Future<Map<String, dynamic>> execute(TdFunction request) async =>
    _client.execute(request.serialize());

  /// Closes the client, destroying the encapsulated [JsonClient]
  Future<void> destroy() async => _client.destroy();
}