import 'package:flutter/material.dart';
import 'package:form/screen/login.dart';
import 'package:form/screen/registered.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: registered_form(),
    );
  }
}
