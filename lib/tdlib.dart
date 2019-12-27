library tdlib;

import 'src/api/objects.dart' as td_objs show Error;

export 'client.dart' show TelegramClient;
export 'src/td_json_client.dart' show JsonClient;
export 'src/api/base_classes.dart';
export 'src/api/objects.dart';
export 'src/api/functions.dart';
export 'src/api/utils.dart' show classIndex;

class TlError extends Error {
  final int code;
  final String message;

  @override
  String toString() {
    return 'TDLib threw an error: $code - $message';
  }

  TlError(td_objs.Error error) :
    code = error.code,
    message = error.message;
}