import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.labelText});
  final TextEditingController controller;
  final String hintText;
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black,
      controller: controller,
      style: const TextStyle(fontSize: 22),
      decoration: InputDecoration(
        hintStyle: const TextStyle(fontSize: 18),
        labelStyle: const TextStyle(color: Colors.orange, fontSize: 18),
        hintText: hintText,
        labelText: labelText,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
