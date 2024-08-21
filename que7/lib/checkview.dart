import 'package:flutter/material.dart';

class checkbox extends StatefulWidget {
  const checkbox({super.key});

  @override
  State<checkbox> createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  bool _isChecked = false;

  void _toggleCheckbox(bool? value) {
    setState(() {
      _isChecked = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox Visibility Example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              title: Text('Show Text'),
              value: _isChecked,
              onChanged: _toggleCheckbox,
            ),
            SizedBox(height: 20),
            if (_isChecked)
              Text(
                'The checkbox is checked!',
                style: TextStyle(fontSize: 20),
              ),
          ],
        ),
      ),
    );
  }
}
