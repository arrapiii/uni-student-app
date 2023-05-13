import 'package:flutter/material.dart';
import 'package:flutter_11_5_2023/network/api.dart';
import 'register.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isLoading = false;
  final _formKey = GlobalKey<FormState>();
  var email, password;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _secureText = true;

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
                "Login",
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Email",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          TextField(
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
                          TextField(
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
                          )
                        ],
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
                            builder: (context) => Home(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          minimumSize: const Size(double.infinity, 50),
                          backgroundColor: const Color(0xFF44B5ED)),
                      child: const Text("Login"),
                    ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
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
                              builder: (context) => Register()));
                    },
                    child: Text(
                      'Sign Up',
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

  void _login() async {
    setState(() {
      _isLoading = true;
    });
    var data = {'email': email, 'password': password};

    var res = await Network().auth(data, '/login');
    var body = json.decode(res.body);
    if (body['success']) {
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.setString('token', json.encode(body['token']));
      localStorage.setString('user', json.encode(body['user']));
      Navigator.pushReplacement(
        context,
        new MaterialPageRoute(builder: (context) => Home()),
      );
    } else {
      body['message'];
    }

    setState(() {
      _isLoading = false;
    });
  }
}
