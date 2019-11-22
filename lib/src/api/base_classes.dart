import "../utils.dart" as tdlib_utils;

/// The TlObject is the forefather class of all TDLib objects. In the API it
/// does not do anything (has no fields and exposes no methods), so I'm using
/// it to add common functionality to all TDLib objects, such as a field for the
/// @type field, and a serialization method.
abstract class TlObject {
  /// The @type of this object, which is a string in the JSON representation of
  /// each class.
  String get tdType;

  /// The parameters for this object. They're how the fields of this class or
  /// arguments of this function are represented in TDLib.
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