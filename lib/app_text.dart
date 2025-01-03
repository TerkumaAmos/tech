import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.suffixIcon,
    this.obscureText = false,
  });

  final String hintText;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextField(
        obscureText: obscureText,
        style: const TextStyle(color: Colors.yellow),
        decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
            ),
            hintText: hintText,
            suffixIcon: suffixIcon,
            contentPadding:
                EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0)),
        controller: controller,
      ),
    );
  }
}