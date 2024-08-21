import 'package:flutter/material.dart';
import 'package:que1/screens/screen1.dart';
import 'package:que1/screens/screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: screen2(),
    );
  }
}
