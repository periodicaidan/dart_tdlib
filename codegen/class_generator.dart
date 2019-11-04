/// dart_tdlib/codegen/class_generator.dart
///
/// Automatically generates classes for TDLib

import "dart:io";
import "dart:convert";
import "utils.dart";

class ApiClass {
  final String name;
  final String superclass;
  final bool isAbstract;
  final List<ApiParam> members;
  final String extra;
  String get type => isAbstract ? name : pascalToCamelCase(name);

  const ApiClass({
    this.name,
    this.superclass,
    this.isAbstract,
    this.members,
    this.extra,
  });

  /// Returns Dart code for this class.
  ///
  /// class $name extends $superclass {
  ///   static const TYPE = $type;
  ///
  ///   ${members[0].type} ${members[0].fieldName};
  ///   ${members[1].type} ${members[1].fieldName};
  ///   ...
  ///
  ///   get params => {
  ///     "${members[0].paramName}": "${members[0].fieldName}",
  ///     "${members[1].paramName}": "${members[1].fieldName}",
  ///     ...,
  ///   };
  ///
  ///   $name(Map<String, dynamic> json) {
  ///     ${members[0].fieldName} = tryParse(json["${members[0].paramName}"]);
  ///     ${members[1].fieldName} = tryParse(json["${members[1].paramName}"]);
  ///     ...
  ///   }
  /// }
  String toDart() {
    var buf = StringBuffer();

    if (isAbstract) {
      buf.write("abstract class $name extends $superclass {}\n");
    } else {
      buf.writeAll([
        // Concrete classes should be reflectable
        "@reflector\n",

        // Class declaration: `class $name [extends $superclass] {`
        "class $name extends $superclass {\n",

        // Static const for the TDLib API type of the class
        "  static const TYPE = \"$type\";\n\n",

        // Field list
        ...members.map((field) => "  ${field.type} ${field.fieldName};\n"),
        "\n",

        // Getter for the parameters of the API request corresponding to this class
        "  @override\n"
        "  Map<String, dynamic> get params => {",
        if (members.isEmpty) "};" // empty map
        else ...[
          "\n",
          ...members.map((param) => "    \"${param.paramName}\": ${param.fieldName},\n"),
          "  };\n"
        ],
        "\n",

        // Constructor
        "  $name(Map<String, dynamic> json)",
        if (members.isEmpty) ";"
        else ...[
          " {\n",
          ...members.map((field) => "    ${field.fieldName} = tryParse(json[\"${field.paramName}\"]);\n"),
          "  }\n",
        ],

        "}\n",
      ]);
    }

    return buf.toString();
  }
}

class ApiParam {
  final String type;
  final String paramName;
  String get fieldName => snakeToCamelCase(paramName);

  const ApiParam(this.type, this.paramName);
}

const apiSpec = <ApiClass>[
  ApiClass(
    name: "OptionValueString",
    superclass: "OptionValue",
    isAbstract: false,
    members: [ApiParam("String", "value")]
  ),
];

main() async {
  Map<String, dynamic> api = await File("./tl_api.json").openRead()
    .transform(Utf8Decoder())
    .transform(JsonDecoder())
    .first;

  List<ApiClass> classes = [];

  api.forEach((k, v) {
    if ((v as Map).length == 1 && (v as Map).containsKey(pascalToCamelCase(k))) {
      classes.add(ApiClass(
        name: k,
        superclass: "TdObject",
        isAbstract: false,
        members: (v[pascalToCamelCase(k)]["fields"] as Map).entries.map((e) => ApiParam(e.value, e.key)).toList(),
        extra: "",
      ));
      return;
    } else {
      classes.add(ApiClass(
        name: k,
        superclass: "TdObject",
        isAbstract: true,
        members: [],
        extra: "",
      ));
    }

    (v as Map).forEach((k, v) {
      var name = camelToPascalCase(k);
      classes.add(ApiClass(
        name: name,
        superclass: name == v["superclass"] ? "TdObject" : v["superclass"],
        isAbstract: false,
        members: (v["fields"] as Map).entries.toList().map((e) => ApiParam(e.value, e.key)).toList(),
        extra: ""
      ));
    });
  });

  File("../lib/src/api/classes.dart").openWrite().writeAll([
    "import \"base_classes.dart\";",
    "import \"utils.dart\";",
    "import \"package:reflectable/reflectable.dart\";\n",
    "class Reflector extends Reflectable {",
    "  const Reflector() :",
    "    super(typeCapability, instanceInvokeCapability, newInstanceCapability);",
    "}\n",
    "const reflector = Reflector();\n",
    ...classes.map((c) => c.toDart()),
  ], "\n");
}