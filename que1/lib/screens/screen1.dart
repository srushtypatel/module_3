import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: double.maxFinite,
                        decoration: BoxDecoration(color: Colors.red),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: 200,
                          width: 192,
                          decoration: BoxDecoration(color: Colors.blue[400]),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 192,
                        decoration: BoxDecoration(color: Colors.blue[400]),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: 200,
                          width: 192,
                          decoration: BoxDecoration(color: Colors.blue[400]),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 192,
                        decoration: BoxDecoration(color: Colors.blue[400]),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: 150,
                          width: 125,
                          decoration: BoxDecoration(color: Colors.yellow[400]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: 150,
                          width: 125,
                          decoration: BoxDecoration(color: Colors.yellow[400]),
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 125,
                        decoration: BoxDecoration(color: Colors.yellow[400]),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
