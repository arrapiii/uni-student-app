import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: Center(
          child: Column(children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 50, 0, 40),
              child: const Column(
                children: [
                  Text(
                    "Hello There!",
                    style: TextStyle(fontFamily: "Roboto-Bold", fontSize: 30),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                width: 300,
                child: Text(
                  "Automatic Identify verivication which enable you to verify with your credentials",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xFF808080)),
                ),
              ),
                ],
              ),
            ),
            SizedBox(
              width: 330,
              height: 260,
              child: Image.asset(
                'assets/img.png',
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(21),
                      ),
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor: const Color(0xFF44B5ED)
                    ),
                    child: const Text("Login"),
                  ),
                  const SizedBox(height: 13),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(21),
                      ),
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor: const Color(0xFFEB5F3C)
                    ),
                    child: const Text("Sign In"),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
