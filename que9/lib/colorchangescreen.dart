import 'package:flutter/material.dart';

class Colorchangescreen extends StatefulWidget {
  const Colorchangescreen({super.key});

  @override
  State<Colorchangescreen> createState() => _ColorchangescreenState();
}

class _ColorchangescreenState extends State<Colorchangescreen> {
  Color _backgroundColor = Colors.white;
  String _selectedColor = 'Red';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Changer'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: _backgroundColor,
              child: Center(
                child: Text(
                  'Selected Color: $_selectedColor',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                RadioListTile<String>(
                  title: Text('Red'),
                  value: 'Red',
                  groupValue: _selectedColor,
                  onChanged: (value) {
                    setState(() {
                      _selectedColor = value!;
                      _backgroundColor = Colors.red;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: Text('Green'),
                  value: 'Green',
                  groupValue: _selectedColor,
                  onChanged: (value) {
                    setState(() {
                      _selectedColor = value!;
                      _backgroundColor = Colors.green;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: Text('Blue'),
                  value: 'Blue',
                  groupValue: _selectedColor,
                  onChanged: (value) {
                    setState(() {
                      _selectedColor = value!;
                      _backgroundColor = Colors.blue;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
