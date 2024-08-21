import 'package:flutter/material.dart';

class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                child: Image.network(
                    "https://images.unsplash.com/photo-1470071459604-3b5ec3a7fe05?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bmF0dXJlfGVufDB8fDB8fHww"),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Text(
                                "ossian lake campground",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                "knowledge switzerland",
                                // textAlign: TextAlign.,
                                style: TextStyle(fontSize: 18),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.red,
                                size: 28,
                              ),
                              Text(
                                "  41",
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.call,
                            color: Colors.blue[400],
                            size: 30,
                          ),
                          Text(
                            "Call",
                            style: TextStyle(
                                color: Colors.blue[400], fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.telegram,
                            color: Colors.blue[400],
                            size: 30,
                          ),
                          Text(
                            "Route",
                            style: TextStyle(
                                color: Colors.blue[400], fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.share,
                            color: Colors.blue[400],
                            size: 30,
                          ),
                          Text(
                            "Share",
                            style: TextStyle(
                                color: Colors.blue[400], fontSize: 18),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Text(
                            "A paragraph is defined as “a group of sentences or a single sentence that forms a unit” (Lunsford and Connors 116). Length and appearance do not determine whether a section in a paper is a paragraph. For instance, in some styles of writing, particularly journalistic styles, a paragraph can be just one sentence long.",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
