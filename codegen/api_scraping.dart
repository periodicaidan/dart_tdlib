import "dart:convert" show json;
import "dart:io";
import "package:http/http.dart";
import "utils.dart";

/// Scrapes the tdlib HTML docs for class information and writes it to a JSON
/// file
//Future<Map<String, dynamic>> getApi() async {
//
//}

/// Parses a line of Telegram's Typed Language (TL) schema language
/// It's basically a language for describing C++ classes, and it's how the
/// TDLib classes are documented. Beats scraping the API docs :p
///
/// Looks something like this:
/// className field1:Type1 field2:Type2 ... = Superclass
///
/// Returns a map entry for the class' fields and stuff
MapEntry<String, Map> parseTlLine(String line) {
  final classAndSuperclass = line.split("=");
  final classWithFields = classAndSuperclass[0].split(" ");
  final className = classWithFields[0];
  final fields = classWithFields.getRange(1, classWithFields.length);
  var fieldInfo = <String, String>{};
  for (var field in fields) {
    if (field.isEmpty) continue;
    final fieldAndType = field.trim().split(":");

    var type = tlTypeToDartType(fieldAndType[1].trim());

    fieldInfo.addAll({fieldAndType[0].trim(): type});
  }

  return MapEntry(className, {
    "superclass": classAndSuperclass[1].trim().replaceAll(";", ""),
    "fields": fieldInfo,
  });
}

String tlTypeToDartType(String tlType) {
  var vector = RegExp(r"vector<(.*)>").firstMatch(tlType);
  if (vector != null) {
    var generic = tlTypeToDartType(vector.group(1));
    return "List<$generic>";
  }

  var dartType = tlType;
  switch (tlType) {
    case "int32":
    case "int53":
    case "int64":
      dartType = "int";
      break;

    case "bytes":
      dartType = "List<int>";
      break;

    case "Bool":
      dartType = "bool";
      break;

    case "double":
      dartType = "double";
      break;

    case "string":
      dartType = "String";
      break;

    default:
      dartType = camelToPascalCase(tlType);
      break;
  }

  return dartType;
}

main() async {
  final client = Client();
  final apiUrl = "https://raw.githubusercontent.com/tdlib/td/master/td/generate/scheme/td_api.tl";
  final apiIndex = (await client.get(apiUrl)).body;

  final lines = apiIndex.split("\n");
  Map<String, dynamic> api = {};

  for (var line in lines.getRange(17, lines.length)) {
    if (line.contains("---functions---")) break;
    if (line.isEmpty || line.startsWith("//")) continue;

    var combinator = parseTlLine(line);
    var superclass = combinator.value["superclass"];
    if (!api.containsKey(superclass)) {
      api.addAll({superclass: {}});
    }

    (api[superclass] as Map).addEntries([combinator]);
  }

  File("./tl_api.json").openWrite().write(json.encode(api));

  client.close();
}
