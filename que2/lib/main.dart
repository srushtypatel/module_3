import 'package:flutter/material.dart';
import 'package:que2/screen/reverse.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ReverseNumber(),
    );
  }
}
