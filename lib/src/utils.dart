import "dart:io" show Platform;
import "package:path/path.dart" as path;
import "api/base_classes.dart";

String platformPath([String dlPath = ""]) {
  dlPath = path.join(dlPath, "td/tdlib/lib");
  final libName = "tdjson";
  if (Platform.isLinux || Platform.isAndroid) return path.join(dlPath, "lib$libName.so");
  if (Platform.isMacOS || Platform.isIOS) return path.join(dlPath, "lib$libName.dylib");
  if (Platform.isWindows) return path.join(dlPath, "$libName.dll");
  throw Exception("Platform Not Supported: ${Platform.operatingSystem}");
}

Map<String, dynamic> serialize(TlObject obj) => {
  "@type": pascalToCamelCase(obj.tdType),
//  "@type": obj is TdObject ? pascalToCamelCase(obj.tdType) : (obj as TdFunction).returnType.toString(),
  ...obj.params.map((k, v) => MapEntry(k, v is TlObject ? serialize(v) : v)),
};

String pascalToCamelCase(String string) {
  return string.replaceFirst(string[0], string[0].toLowerCase());
}

String camelToPascalCase(String string) {
  return string.replaceFirst(string[0], string[0].toUpperCase());
}