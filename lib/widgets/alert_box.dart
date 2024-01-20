import 'package:first_app/screens/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';

void showAlertBox(
  BuildContext context,
  String title,
  String content,
) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
      ),
      content: Text(
        content,
        style: const TextStyle(fontSize: 18),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            "Close",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
        TextButton(
          onPressed: () async {
            final sharedPrefs = await SharedPreferences.getInstance();
            sharedPrefs.clear();
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
                (route) => false);
          },
          child: const Text(
            "Logout",
            style: TextStyle(
              color: Colors.red,
              fontSize: 18,
            ),
          ),
        ),
      ],
    ),
  );
}
