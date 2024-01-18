import 'package:first_app/screens/login/login_page.dart';
import 'package:flutter/material.dart';

class MaterialPageApp extends StatelessWidget {
  const MaterialPageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage()
    );
  }
}