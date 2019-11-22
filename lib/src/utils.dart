import "dart:io" show Platform;
import "package:path/path.dart" as path;
import "api/base_classes.dart";

/// Creates a path to the correctly-named dynamic library (which differs by OS)
/// containing the TDLib JSON client. If the platform is not supported an
/// [Exception] is thrown.
String platformPath([String dlPath = ""]) {
  dlPath = path.join(dlPath, "td/tdlib/lib");
  final libName = "tdjson";
  if (Platform.isLinux || Platform.isAndroid) return path.join(dlPath, "lib$libName.so");
  if (Platform.isMacOS || Platform.isIOS) return path.join(dlPath, "lib$libName.dylib");
  if (Platform.isWindows) return path.join(dlPath, "$libName.dll");
  throw Exception("Platform Not Supported: ${Platform.operatingSystem}");
}

/// Turns a [TlObject] into a [Map] that is suitable for JSON serialization and
/// being sent to the Telegram API
Map<String, dynamic> serialize(TlObject obj) => {
  "@type": pascalToCamelCase(obj.tdType),

  // The fields of the object. If one of the fields is a TlObject, we recurse to
  // serialize it in turn.
  ...obj.params.map((k, v) => MapEntry(k, v is TlObject ? serialize(v) : v)),
};

String pascalToCamelCase(String string) {
  return string.replaceFirst(string[0], string[0].toLowerCase());
}

String camelToPascalCase(String string) {
  return string.replaceFirst(string[0], string[0].toUpperCase());
}