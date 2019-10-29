import "dart:io" show Platform;
import "package:path/path.dart" as path;

String platformPath([String dlPath = ""]) {
  if (Platform.isLinux || Platform.isAndroid) return path.join(dlPath, "libdalton.so");
  if (Platform.isMacOS || Platform.isIOS) return path.join(dlPath, "libdalton.dylib");
  if (Platform.isWindows) return path.join(dlPath, "dalton.dll");
  throw Exception("Platform Not Supported");
}