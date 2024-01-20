import 'package:first_app/screens/home/home_page.dart';
import 'package:first_app/utils/height_width.dart';
import 'package:first_app/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../main.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Login",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            kHeight30,
            TextFieldWidget(
              controller: userNameController,
              hintText: "Enter username",
              labelText: "username",
            ),
            kHeight15,
            TextFieldWidget(
              controller: passwordController,
              hintText: "Enter password",
              labelText: "password",
            ),
            kHeight15,
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 12),
                    backgroundColor: Colors.black),
                onPressed: () {
                  userLogInDataCheck(context);
                },
                child: const Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }

  Future<void> userLogInDataCheck(BuildContext context) async {
    final userName = userNameController.text;
    final password = passwordController.text;
    if (userName.isNotEmpty && password.isNotEmpty && userName == password) {
      final sharedPrefs = await SharedPreferences.getInstance();
      await sharedPrefs.setBool(KEY_VALUE, true);
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          behavior: SnackBarBehavior.floating,
          duration: Duration(seconds: 1),
          content: Text(
            "Invalid username and password",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          backgroundColor: Colors.black,
        ),
      );
    }
  }
}
