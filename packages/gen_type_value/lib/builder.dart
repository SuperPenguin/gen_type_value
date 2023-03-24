import 'package:build/build.dart';
import 'package:gen_type_value/src/generator.dart';
import 'package:source_gen/source_gen.dart';

Builder genTypeValueBuilder(BuilderOptions options) {
  return SharedPartBuilder(
    [GenTypeValueGenerator()],
    'gen_type_value',
  );
}
