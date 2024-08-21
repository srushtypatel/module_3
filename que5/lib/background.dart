import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(ChangeBackgroundApp());
}

class ChangeBackgroundApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BackgroundChangerScreen(),
    );
  }
}

class BackgroundChangerScreen extends StatefulWidget {
  @override
  _BackgroundChangerScreenState createState() =>
      _BackgroundChangerScreenState();
}

class _BackgroundChangerScreenState extends State<BackgroundChangerScreen> {
  Color _backgroundColor = Colors.white;

  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = Color(Random().nextInt(0xffffffff));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Background Color'),
      ),
      body: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        color: _backgroundColor,
        child: Center(
          child: ElevatedButton(
            onPressed: _changeBackgroundColor,
            child: Text('Change Background'),
          ),
        ),
      ),
    );
  }
}
