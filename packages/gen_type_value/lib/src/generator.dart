import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:build/build.dart';
import 'package:gen_type_value_annotation/gen_type_value_annotation.dart';
import 'package:source_gen/source_gen.dart';

class GenTypeValueGenerator extends GeneratorForAnnotation<GenTypeValue> {
  @override
  String generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    final String? className = element.name;

    if (className == null) {
      throw Exception('Classname is null!');
    }

    final DartType t = annotation.read('type').typeValue;
    final String type = t.getDisplayString(withNullability: false);

    return '''
  class ${className}Generated {
    const ${className}Generated({
      this.value,
    });

    final $type? value;
  }
''';
  }
}
