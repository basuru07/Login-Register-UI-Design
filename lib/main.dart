import 'package:flutter/material.dart';
import 'createaccount.dart';
import 'slidescreen01.dart';
import 'slidescreen02.dart';
import 'slidescreen03.dart';
import 'welcomeScreen.dart';

void main() {
  runApp(const MyApp());
}
 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CreateAccount(),
    );
  }
}