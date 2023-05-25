import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.purple.shade50,
              ),
              child: Image.asset(
                "assets/image2.png",
              ),
            ),
            //SEPARADOR
            const SizedBox(height: 20),
            //SEPARADOR
            const Text(
              "Registro",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Agrega tu número de celular. Te enviaremos un código de verificación.",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black38,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            //SEPARADOR
            const SizedBox(height: 20),
            TextFormField(
              controller: phoneController,
            )
            //SEPARADOR
          ],
        ),
      ))),
    );
  }
}
