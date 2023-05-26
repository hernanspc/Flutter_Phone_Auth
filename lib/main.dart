import 'package:flutter/material.dart';
import 'package:phoneauth_firebase/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: const WelcomeScreen(),
      title: 'FlutterPhoneAuth',
      theme: ThemeData(
        textSelectionTheme: const TextSelectionThemeData(
          selectionColor: Color.fromARGB(255, 240, 157, 255),
          selectionHandleColor: Colors.red,
        ),
      ),
    );
  }
}
