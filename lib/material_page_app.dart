import 'package:first_app/screens/login/login_page.dart';
import 'package:first_app/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class MaterialPageApp extends StatelessWidget {
  const MaterialPageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: SplashScreen()
    );
  }
}