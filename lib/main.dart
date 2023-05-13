import 'package:flutter/material.dart';
import 'package:flutter_11_5_2023/screens/formm.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/home.dart';
import 'screens/login.dart';
import 'screens/details.dart';
import 'screens/splash.dart';
import 'screens/first_splash.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  debugShowCheckedModeBanner: false,
  routes: {
    '/login': (context) => Login(),
    '/splash': (context) => const Splash(),
    '/': (context) => const FirstSplash(),
    '/home': (context) => Home(),
    '/details': (context) => const Details(),
    '/formpost': (context) => MyForm()

  },
  theme: ThemeData(fontFamily: "Roboto") ,
));

