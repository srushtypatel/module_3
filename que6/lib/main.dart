import 'package:flutter/material.dart';
import 'package:que6/font.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FontSizeAdjusterApp();
  }
}
