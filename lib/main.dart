import 'package:flutter/material.dart';
import 'package:phoneauth_firebase/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      home: WelcomeScreen(),
      title: 'FlutterPhoneAuth',
    );
  }
}
