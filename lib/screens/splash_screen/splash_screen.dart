import 'package:first_app/main.dart';
import 'package:first_app/screens/home/home_page.dart';
import 'package:first_app/screens/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    userLoginOrNotChecking();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.orange,
          ),
          child: const Center(
              child: Text(
            "WELCOME",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ),
    );
  }

  Future<void> goToLoginAfterThreeSeconds() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }

  Future<void> userLoginOrNotChecking() async {
    final sharedPrefs = await SharedPreferences.getInstance();
    final value = sharedPrefs.getBool(KEY_VALUE);

    if (value==null || value == false) {
      goToLoginAfterThreeSeconds();
    }else{
      Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
    }
  }
}
