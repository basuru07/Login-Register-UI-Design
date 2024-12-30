import 'package:flutter/material.dart';
import 'verification.dart';
import 'verificationcode.dart';

void main() {
  runApp(const MyApp());
}
 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Verificationcode(),
    );
  }
}