
import 'package:flutter/material.dart';
import 'package:flutter_11_5_2023/screens/login.dart';
// import 'login.dart';
// import 'package:flutter_11_5_2023/network/api.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'dart:convert';
// import 'home.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _isLoading = false;
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _secureText = true;
  late String name, email, password;

  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 28, vertical: 72),
          child: Column(
            children: [
              Text(
                "Register",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 30),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Welcome back ! Login with your credentials",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(
                height: 24,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Username",
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            TextFormField(
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(15.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(21.0),
                                    borderSide: BorderSide(color: Colors.blue)),
                                hintText: "Username",
                              ),
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              height: 24.0,
                            ),
                            Text(
                              "Email",
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            TextFormField(
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(15.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(21.0),
                                    borderSide: BorderSide(color: Colors.blue)),
                                hintText: "Email",
                              ),
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              height: 24.0,
                            ),
                            Text(
                              "Password",
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            TextFormField(
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.text,
                              obscureText: _secureText,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(14.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(21.0),
                                    borderSide: BorderSide(color: Colors.blue)),
                                hintText: "Password",
                                suffixIcon: IconButton(
                                  onPressed: showHide,
                                  icon: Icon(_secureText
                                      ? Icons.visibility_off
                                      : Icons.visibility),
                                ),
                              ),
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(height: 24.0,),
                            Text(
                              "Confirm Password",
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            TextFormField(
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.text,
                              obscureText: _secureText,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(14.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(21.0),
                                    borderSide: BorderSide(color: Colors.blue)),
                                hintText: "Confirm Password",
                                suffixIcon: IconButton(
                                  onPressed: showHide,
                                  icon: Icon(_secureText
                                      ? Icons.visibility_off
                                      : Icons.visibility),
                                ),
                              ),
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const SizedBox(height: 13),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 19),
                child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          minimumSize: const Size(double.infinity, 50),
                          backgroundColor: const Color(0xFFEB5F3C)),
                      child: const Text("Submit"),
                    ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => Login()));
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }


  }