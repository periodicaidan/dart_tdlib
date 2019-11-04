abstract class TlObject {
  static const TYPE = "tlObject";
  String get tlType => TYPE;

  Map<String, dynamic> get params;
}

abstract class TdObject extends TlObject {}
abstract class TdFunction extends TlObject {}