import "dart:io" show Platform;
import "package:path/path.dart" as path;

String platformPath([String dlPath = ""]) {
  final libName = "tdjson";
  if (Platform.isLinux || Platform.isAndroid) return path.join(dlPath, "lib$libName.so");
  if (Platform.isMacOS || Platform.isIOS) return path.join(dlPath, "lib$libName.dylib");
  if (Platform.isWindows) return path.join(dlPath, "$libName.dll");
  throw Exception("Platform Not Supported");
}