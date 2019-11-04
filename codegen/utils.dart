import "dart:convert";

final _uppers = List.generate(26, (i) => i + 0x41);

String pascalToCamelCase(String string) {
  return string.replaceFirst(string[0], string[0].toLowerCase());
}

String camelToPascalCase(String string) {
  return string.replaceFirst(string[0], string[0].toUpperCase());
}

String camelToSnakeCase(String string) {
  var buf = StringBuffer();
  var runes = string.runes.toList();
  for (var i = 0; i < runes.length; i++) {
    var rune = runes[i];
    var nextChar = String.fromCharCode(rune).toLowerCase();
    if (i != 0 && _uppers.contains(rune)) {
      buf.write("_");
    }

    buf.write(nextChar);
  }

  return buf.toString();
}

String snakeToCamelCase(String string) {
  return string.replaceAllMapped(
    RegExp(r"_(\w)"),
    (m) => m.group(1).toUpperCase()
  );
}