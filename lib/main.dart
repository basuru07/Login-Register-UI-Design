import 'package:flutter/material.dart';
import 'dart:async'; // Import the timer package
import 'package:login_register_ui/createaccount.dart';
import 'package:login_register_ui/slidescreen01.dart';
import 'package:login_register_ui/welcomeScreen.dart';
import 'createaccount02.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreenWithDelay(),
    );
  }
}

class WelcomeScreenWithDelay extends StatefulWidget {
  @override
  _WelcomeScreenWithDelayState createState() => _WelcomeScreenWithDelayState();
}

class _WelcomeScreenWithDelayState extends State<WelcomeScreenWithDelay> {
  @override
  void initState() {
    super.initState();

    // Set a timer to navigate to Slidescreen01 after 10 seconds
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Slidescreen01()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Welcomescreen(); // Your WelcomeScreen widget
  }
}
