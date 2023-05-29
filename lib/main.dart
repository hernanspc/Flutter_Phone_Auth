import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:phoneauth_firebase/provider/auth_provider.dart';
import 'package:phoneauth_firebase/screens/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: true,
        home: const WelcomeScreen(),
        title: 'FlutterPhoneAuth',
        theme: ThemeData(
          textSelectionTheme: const TextSelectionThemeData(
            selectionColor: Color.fromARGB(255, 240, 157, 255),
            selectionHandleColor: Colors.red,
          ),
        ),
      ),
    );
  }
}
