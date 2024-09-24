import 'package:cs3midlogin/screens/home.dart';
import 'package:cs3midlogin/screens/login.dart';
import 'package:cs3midlogin/screens/mainScreen.dart';
import 'package:cs3midlogin/screens/signUp.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {

  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',

      routes: {
        '/': (context) => const mainScreen(),
        '/login': (context) => const login(),
        '/signup': (context) => const signup(),
        '/home': (context) => const home(),
      },
    );
  }
}
