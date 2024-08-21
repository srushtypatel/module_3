import 'package:flutter/material.dart';

class colorslider extends StatefulWidget {
  const colorslider({super.key});

  @override
  State<colorslider> createState() => _colorsliderState();
}

class _colorsliderState extends State<colorslider> {
  double _redValue = 0.0;
  double _greenValue = 0.0;
  double _blueValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Slider Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              color: Color.fromRGBO(
                _redValue.toInt(),
                _greenValue.toInt(),
                _blueValue.toInt(),
                1.0,
              ),
              child: Center(
                child: Text(
                  'RGB(${_redValue.toInt()}, ${_greenValue.toInt()}, ${_blueValue.toInt()})',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text('Red'),
                Slider(
                  value: _redValue,
                  min: 0,
                  max: 255,
                  activeColor: Colors.red,
                  onChanged: (value) {
                    setState(() {
                      _redValue = value;
                    });
                  },
                ),
                Text('Green'),
                Slider(
                  value: _greenValue,
                  min: 0,
                  max: 255,
                  activeColor: Colors.green,
                  onChanged: (value) {
                    setState(() {
                      _greenValue = value;
                    });
                  },
                ),
                Text('Blue'),
                Slider(
                  value: _blueValue,
                  min: 0,
                  max: 255,
                  activeColor: Colors.blue,
                  onChanged: (value) {
                    setState(() {
                      _blueValue = value;
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
