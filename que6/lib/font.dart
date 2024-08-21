import 'package:flutter/material.dart';

void main() {
  runApp(FontSizeAdjusterApp());
}

class FontSizeAdjusterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FontSizeAdjusterScreen(),
    );
  }
}

class FontSizeAdjusterScreen extends StatefulWidget {
  @override
  _FontSizeAdjusterScreenState createState() => _FontSizeAdjusterScreenState();
}

class _FontSizeAdjusterScreenState extends State<FontSizeAdjusterScreen> {
  double _fontSize = 16.0;

  void _increaseFontSize() {
    setState(() {
      _fontSize += 2.0;
    });
  }

  void _decreaseFontSize() {
    setState(() {
      if (_fontSize > 10.0) {
        _fontSize -= 2.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Font Size Adjuster'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Adjust the font size!',
              style: TextStyle(fontSize: _fontSize),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _decreaseFontSize,
                  child: Text('−', style: TextStyle(fontSize: 20)),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: _increaseFontSize,
                  child: Text('+', style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
