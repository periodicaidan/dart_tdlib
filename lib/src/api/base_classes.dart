import "../utils.dart" as tdlib_utils;

abstract class TlObject {
  String get tdType;
  Map<String, dynamic> get params;

  Map<String, dynamic> serialize() {
    return tdlib_utils.serialize(this);
  }

  static bool isError(dynamic obj) {
    if (obj is TlObject) {
      return obj.tdType == "error";
    }

    if (obj is Map) {
      return obj["@type"] == "error";
    }

    return false;
  }
}

abstract class TdObject extends TlObject {
  String get tdType;
}

abstract class TdFunction extends TlObject {
  Type get returnType;
}