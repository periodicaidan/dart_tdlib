abstract class TlObject {
  Map<String, dynamic> get params;
}

abstract class TdObject extends TlObject {
  String get tdType;
}

abstract class TdFunction extends TlObject {
  Type get returnType;
}