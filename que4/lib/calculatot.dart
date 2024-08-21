import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final TextEditingController _number1Controller = TextEditingController();
  final TextEditingController _number2Controller = TextEditingController();

  String _selectedOperation = 'Add';
  double _result = 0.0;

  void _calculateResult() {
    final double? number1 = double.tryParse(_number1Controller.text);
    final double? number2 = double.tryParse(_number2Controller.text);

    if (number1 == null || number2 == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter valid numbers')),
      );
      return;
    }

    setState(() {
      switch (_selectedOperation) {
        case 'Add':
          _result = number1 + number2;
          break;
        case 'Subtract':
          _result = number1 - number2;
          break;
        case 'Multiply':
          _result = number1 * number2;
          break;
        case 'Divide':
          if (number2 != 0) {
            _result = number1 / number2;
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Cannot divide by zero')),
            );
            _result = 0.0;
          }
          break;
        default:
          _result = 0.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: _number1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter the first number',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _number2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter the second number',
              ),
            ),
            SizedBox(height: 20),
            Text('Select Operation:'),
            Row(
              children: <Widget>[
                Expanded(
                  child: RadioListTile<String>(
                    title: const Text('Add'),
                    value: 'Add',
                    groupValue: _selectedOperation,
                    onChanged: (value) {
                      setState(() {
                        _selectedOperation = value!;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<String>(
                    title: const Text('Subtract'),
                    value: 'Subtract',
                    groupValue: _selectedOperation,
                    onChanged: (value) {
                      setState(() {
                        _selectedOperation = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RadioListTile<String>(
                    title: const Text('Multiply'),
                    value: 'Multiply',
                    groupValue: _selectedOperation,
                    onChanged: (value) {
                      setState(() {
                        _selectedOperation = value!;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<String>(
                    title: const Text('Divide'),
                    value: 'Divide',
                    groupValue: _selectedOperation,
                    onChanged: (value) {
                      setState(() {
                        _selectedOperation = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateResult,
              child: Text('Calculate'),
            ),
            SizedBox(height: 20),
            Text(
              'Result: $_result',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
