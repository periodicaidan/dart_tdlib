import "dart:io" show Platform;
import "dart:convert" show json;
import "package:path/path.dart" as path;
import "api/base_classes.dart" show TlObject;
import "api/utils.dart" show classIndex;

String platformPath([String dlPath = ""]) {
  dlPath = path.join(dlPath, "td/tdlib/lib");
  final libName = "tdjson";
  if (Platform.isLinux || Platform.isAndroid) return path.join(dlPath, "lib$libName.so");
  if (Platform.isMacOS || Platform.isIOS) return path.join(dlPath, "lib$libName.dylib");
  if (Platform.isWindows) return path.join(dlPath, "$libName.dll");
  throw Exception("Platform Not Supported: ${Platform.operatingSystem}");
}

String serialize(TlObject obj) => json.encode({
  "@type": obj.tlType,
  ...obj.params.map((k, v) => MapEntry(k, v is TlObject ? serialize(v) : v)),
});