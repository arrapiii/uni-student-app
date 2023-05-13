import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_11_5_2023/screens/splash.dart';

class FirstSplash extends StatefulWidget {
  const FirstSplash({super.key});

  @override
  State<FirstSplash> createState() => _FirstSplashState();
}

class _FirstSplashState extends State<FirstSplash> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Splash()),
      );
    });

    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);
    
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  

  @override
  Widget build(BuildContext context) {
    _controller.forward();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "splash",
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(top: 10),
          child: Center(
            child: AnimatedBuilder(
              animation: _opacityAnimation,
              builder: (BuildContext context, Widget? child) {
                return Opacity(
                  opacity: _opacityAnimation.value,
                  child: AnimatedContainer(
                    margin: const EdgeInsets.only(bottom: 40),
                    duration: const Duration(milliseconds: 300),
                    child: SizedBox(
                      height: 180,
                      width: 180,
                      child: Image.asset("assets/logo.png")
                    )
                  ),
                );
              },
              ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 120,
          child: Center(
            child: AnimatedBuilder(
              animation: _opacityAnimation,
              builder: (BuildContext context, Widget? child) {
                return Opacity(
                  opacity: _opacityAnimation.value,
                  child: AnimatedContainer(
                    margin: const EdgeInsets.only(bottom: 20),
                    duration: const Duration(seconds: 1),
                    child: const Text(
                      "Uni Student",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto-Bold",
                        fontSize: 30,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

