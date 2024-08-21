import 'package:flutter/material.dart';
import 'package:form/screen/home_page.dart';

class registered_form extends StatefulWidget {
  const registered_form({super.key});

  @override
  State<registered_form> createState() => _registered_formState();
}

class _registered_formState extends State<registered_form> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                    decoration: BoxDecoration(),
                    margin: EdgeInsets.only(top: 20),
                    child: Center(
                      child: Text(
                        "REGISTER",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
                SizedBox(height: 20),
                Divider(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 350,
                  child: Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty && value != null) {
                              return 'Please enter valid value';
                            }
                          },
                          decoration: InputDecoration(hintText: "Name"),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty && value != null) {
                              return 'Please enter valid value';
                            }
                          },
                          decoration: InputDecoration(hintText: "Email"),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          obscureText: true,
                          validator: (value) {
                            if (value!.isEmpty && value != null) {
                              return 'Please enter valid value';
                            }
                          },
                          decoration: InputDecoration(hintText: "Password"),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          obscureText: true,
                          validator: (value) {
                            if (value!.isEmpty && value != null) {
                              return 'Please enter valid value';
                            }
                          },
                          decoration:
                              InputDecoration(hintText: "Confirm Password"),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    if (_formkey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Home_page()));
                    }
                  },
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(50)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sign up",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Have an account?",
                        style: TextStyle(fontSize: 15),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Home_page()));
                        },
                        child: Text(
                          "   Login Here",
                          style: TextStyle(color: Colors.blue, fontSize: 15),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
