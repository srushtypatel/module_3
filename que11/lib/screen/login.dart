import 'package:flutter/material.dart';
import 'package:form/screen/home_page.dart';

class Mytextfile extends StatefulWidget {
  const Mytextfile({super.key});

  @override
  State<Mytextfile> createState() => _MytextfileState();
}

class _MytextfileState extends State<Mytextfile> {
  bool _selected = true;
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 139, 95, 214),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1532703108233-69111d554cb4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cm9hZCUyMGxpZ2h0JTIwaW1hZ2V8ZW58MHx8MHx8fDA%3D"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(90),
                        bottomRight: Radius.circular(90))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Icon(
                      Icons.add_location,
                      color: Colors.white,
                      size: 80,
                    ),
                    Text(
                      "HELLO",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    Container(
                      decoration: BoxDecoration(color: Colors.transparent),
                    )
                  ],
                ),
              ),
              Container(
                child: Align(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          "Welcome",
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "please Login With your Information",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty && value != null) {
                              return 'Please Enter valid User name!';
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                              hintText: "User Name",
                              hintStyle: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                              suffixIcon: Icon(Icons.check)),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty && value != null) {
                                  return 'Please Enter correct password!';
                                } else {
                                  return null;
                                }
                              },
                              obscureText: _selected,
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                  suffixIcon: _selected == true
                                      ? IconButton(
                                          onPressed: () {
                                            setState(() {
                                              _selected = false;
                                            });
                                          },
                                          icon: Icon(Icons.visibility))
                                      : IconButton(
                                          onPressed: () {
                                            setState(() {
                                              _selected = true;
                                            });
                                          },
                                          icon: Icon(Icons.visibility_off))),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              Container(),
              ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const Home_page()));
                  }
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 139, 95, 214)),
                    elevation: MaterialStatePropertyAll(15)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
