library tdlib;

export "package:tdlib/src/td_json_client.dart" show JsonClient;
export "src/api/base_classes.dart";
export "src/api/objects.dart";
export "src/api/functions.dart";
export "src/api/utils.dart" show classIndex;

class TdLibError extends Error {
  final int code;
  final String message;

  @override
  String toString() {
    return "TDLib threw an error: $code - $message";
  }

  TdLibError(Map<String, dynamic> jsonError) :
    this.code = jsonError["code"],
    this.message = jsonError["message"];
}