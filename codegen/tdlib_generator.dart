/// dart_tdlib/codegen/tdlib_generator.dart
///
/// Automatically generates classes for TDLib

import "dart:io";
import "dart:convert";
import "utils.dart";

/// Represents a class constructor in the TD API
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
  /// @reflector
  /// class $name extends $superclass {
  ///   @override
  ///   String get tdType => "$type";
  ///
  ///   ${members[0].type} ${members[0].fieldName};
  ///   ${members[1].type} ${members[1].fieldName};
  ///   ...
  ///
  ///   @override
  ///   Map<String, dynamic> get params => {
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
    } else if (members.isEmpty) {
      buf.writeAll([
        "@reflector",
        "class $name extends $superclass {",
        "  @override",
        "  String get tdType => \"$type\";",
        "",
        "  @override",
        "  Map<String, dynamic> get params => {};",
        "",
        "  $name(Map<String, dynamic> json);", // Still has params for consistency
        "}",
        "",
      ], "\n");
    } else {
      buf.writeAll([
        "@reflector",
        "class $name extends $superclass {",
        "  @override",
        "  String get tdType => \"$type\";",
        "",
        ...members.map((field) => "  ${field.type} ${field.fieldName};"),
        "",
        "  @override",
        "  Map<String, dynamic> get params => {",
        ...members.map((param) => "    \"${param.paramName}\": ${param.fieldName},"),
        "  };",
        "",
        "  $name(Map<String, dynamic> json) {",
        ...members.map((field) => "    ${field.fieldName} = tryParse(json[\"${field.paramName}\"]);"),
        "  }",
        "}",
        "",
      ], "\n");
    }

    return buf.toString();
  }
}

/// Represents a function in the TD API
class ApiFunction {
  final String name;
  final String returnType;
  final List<ApiParam> params;

  const ApiFunction(
    this.name,
    this.returnType,
    this.params,
  );

  /// Returns Dart code for this function
  ///
  /// @reflector
  /// class $name extends TdFunction {
  ///   @override
  ///   String get returnType => "$returnType";
  ///
  ///   final ${params[0].type} ${params[0].fieldName};
  ///   final ${params[1].type} ${params[1].fieldName};
  ///   ...
  ///
  ///   @override
  ///   Map<String, dynamic> get params => {
  ///     "${params[0].paramName}": ${param[0].fieldName,
  ///     "${params[1].paramName}": ${param[1].fieldName,
  ///     ...
  ///   }
  ///
  ///   $name(
  ///     this.${params[0].fieldName},
  ///     this.${params[1].fieldName},
  ///     ...
  ///   )
  /// }
  String toDart() {
    var buf = StringBuffer();
    if (params.isEmpty) {
      buf.writeAll([
        "@reflector",
        "class $name extends TdFunction {",
        "  @override",
        "  Type get returnType => $returnType;",
        "",
        "  @override",
        "  Map<String, dynamic> get params => {};",
        "",
        "  $name();",
        "}",
        "",
      ], "\n");
    } else {
      buf.writeAll([
        "@reflector",
        "class $name extends TdFunction {",
        "  Type get returnType => $returnType;",
        "",
        ...params.map((field) => "  final ${field.type} ${field.fieldName};"),
        "",
        "  @override",
        "  Map<String, dynamic> get params => {",
        ...params.map((param) => "    \"${param.paramName}\": ${param.fieldName},"),
        "  };",
        "",
        "  $name(",
        ...params.map((param) => "    this.${param.fieldName},"),
        "  );",
        "}",
        "",
      ], "\n");
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
  List<ApiFunction> functions = [];

  // TODO: Clean up whatever the hell this is, or at least document it
  (api["types"] as Map).forEach((k, v) {
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
        members: (v["fields"] as Map).entries
          .toList()
          .map((e) => ApiParam(e.value, e.key))
          .toList(),
        extra: ""
      ));
    });
  });

  (api["functions"] as Map).forEach((k, v) {
    (v as Map).forEach((k, v) {
      var name = camelToPascalCase(k);
      functions.add(ApiFunction(
        name,
        v["superclass"],
        (v["fields"] as Map).entries
          .toList()
          .map((e) => ApiParam(e.value, e.key))
          .toList(),
      ));
    });
  });

  File("../lib/src/api/objects.dart")
    .openWrite()
    .writeAll([
      "import \"base_classes.dart\";",
      "import \"utils.dart\";",
      "",
      ...classes.map((c) => c.toDart()),
    ], "\n");

  File("../lib/src/api/functions.dart")
    .openWrite()
    .writeAll([
      "import \"base_classes.dart\";",
      "import \"objects.dart\";",
      "import \"utils.dart\";",
      "",
      ...functions.map((f) => f.toDart()),
    ], "\n");
}
