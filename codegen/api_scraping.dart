import "dart:convert" show json;
import "dart:io";
import "package:http/http.dart";
import "utils.dart";

/// Parses a line of Telegram's Typed Language (TL) schema language
/// It's basically a language for describing functions and class constructors,
/// and it's how the TDLib classes and functions are documented.
///
/// Looks something like this:
/// combinatorName field1:Type1 field2:Type2 ... = ReturnType
///
/// Returns a map entry for the class'/function's fields and stuff
MapEntry<String, Map> parseTlLine(String line) {
  final combinatorAndType = line.split("=");
  final combinatorWithFields = combinatorAndType[0].split(" ");
  final combinatorName = combinatorWithFields[0];
  final fields = combinatorWithFields.getRange(1, combinatorWithFields.length);
  var fieldInfo = <String, String>{};
  for (var field in fields) {
    if (field.isEmpty) continue;
    final fieldAndType = field.trim().split(":");

    var type = tlTypeToDartType(fieldAndType[1].trim());

    fieldInfo.addAll({fieldAndType[0].trim(): type});
  }

  return MapEntry(combinatorName, {
    "superclass": combinatorAndType[1].trim().replaceAll(";", ""),
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
  Map<String, dynamic> classes = {};
  Map<String, dynamic> functions = {};

  var parseAsFunction = false;
  for (var line in lines.getRange(17, lines.length)) {
    if (line.contains("---functions---")) {
      parseAsFunction = true;
      continue;
    } else if (line.contains("---types---")) {
      parseAsFunction = false;
      continue;
    }

    if (line.isEmpty || line.startsWith("//")) continue;

    var combinator = parseTlLine(line);
    if (parseAsFunction) {
      var returnType = combinator.value["superclass"];
      if (!functions.containsKey(returnType)) {
        functions.addAll({returnType: {}});
      }
      (functions[returnType] as Map).addEntries([combinator]);
    } else {
      var superclass = combinator.value["superclass"];
      if (!classes.containsKey(superclass)) {
        classes.addAll({superclass: {}});
      }
      (classes[superclass] as Map).addEntries([combinator]);
    }
  }

  var api = {
    "types": classes,
    "functions": functions,
  };

  File("./tl_api.json")
    .openWrite()
    .write(json.encode(api));

  client.close();
}
