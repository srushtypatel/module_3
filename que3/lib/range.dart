import 'package:flutter/material.dart';

void main() {
  runApp(RangeNumberApp());
}

class RangeNumberApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NumberInputScreen(),
    );
  }
}

class NumberInputScreen extends StatefulWidget {
  @override
  _NumberInputScreenState createState() => _NumberInputScreenState();
}

class _NumberInputScreenState extends State<NumberInputScreen> {
  final TextEditingController _firstNumberController = TextEditingController();
  final TextEditingController _secondNumberController = TextEditingController();

  void _navigateToNextScreen(BuildContext context) {
    final int? firstNumber = int.tryParse(_firstNumberController.text);
    final int? secondNumber = int.tryParse(_secondNumberController.text);

    if (firstNumber == null || secondNumber == null) {
      // Show a snack bar if input is invalid
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter valid numbers')),
      );
    } else if (firstNumber >= secondNumber) {
      // Show a snack bar if the first number is not less than the second number
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content:
                Text('First number should be less than the second number')),
      );
    } else {
      // Navigate to the next screen if everything is fine
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RangeDisplayScreen(
            firstNumber: firstNumber,
            secondNumber: secondNumber,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Numbers'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _firstNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter the first number',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _secondNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter the second number',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _navigateToNextScreen(context),
              child: Text('Show Numbers in Range'),
            ),
          ],
        ),
      ),
    );
  }
}

class RangeDisplayScreen extends StatelessWidget {
  final int firstNumber;
  final int secondNumber;

  RangeDisplayScreen({required this.firstNumber, required this.secondNumber});

  List<int> _getNumbersInRange() {
    if (secondNumber - firstNumber > 1) {
      // If the range has numbers in between
      return List<int>.generate(
          secondNumber - firstNumber - 1, (i) => firstNumber + i + 1);
    } else {
      // If there are no numbers in the range
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<int> numbersInRange = _getNumbersInRange();

    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers in Range'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: numbersInRange.isNotEmpty
            ? ListView.builder(
                itemCount: numbersInRange.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(numbersInRange[index].toString()),
                  );
                },
              )
            : Center(
                child: Text(
                  'No numbers in the specified range.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
      ),
    );
  }
}
