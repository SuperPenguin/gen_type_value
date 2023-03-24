import 'package:gen_type_value_annotation/gen_type_value_annotation.dart';
import 'package:flutter/material.dart';

part 'my_widget.g.dart';

@GenTypeValue(type: EdgeInsets)
class HelloWorld extends StatelessWidget {
  const HelloWorld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Hello World');
  }
}
