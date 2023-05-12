import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/home.dart';
import 'screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "asiewdhiwehwieh",
      debugShowCheckedModeBanner: false,
      home: Home(),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
    );
  }
}

// class CheckAuth extends StatefulWidget {
//   const CheckAuth({super.key});

//   @override
//   State<CheckAuth> createState() => _CheckAuthState();
// }

// class _CheckAuthState extends State<CheckAuth> {
//   bool isAuth = false;

//   @override
//   void initState() {
//     super.initState();
//     _checkIfLoggedIn();
//   }

//   void _checkIfLoggedIn() async {
//     SharedPreferences localStorage = await SharedPreferences.getInstance();
//     var token = localStorage.getString('token');
//     if (token != null) {
//       if (mounted) {
//         setState(() {
//           isAuth = true;
//         });
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     Widget child;
//     if (isAuth) {
//       child = Home();
//     } else {
//       child = Login();
//     }
//     return Scaffold(
//       body: child,
//     );
//   }
// }
