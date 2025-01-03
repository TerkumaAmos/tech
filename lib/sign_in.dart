import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tech/my_button.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF1A1B35),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 300,
              ),
              const Center(
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyButton(
                        onTap: () {},
                        label: 'click me',
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Or With Email',
                        style: TextStyle(color: Colors.white),
                      ),
                      AppTextField(
                        hintText: 'Your Email',
                        controller: emailController,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Password(passwordController: passwordController),
                      GestureDetector(
                        child: const Icon(
                          Icons.question_answer,
                          size: 100,
                        ),
                        onTap: () {
                          log(" Message  ${passwordController.text}");
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class Password extends StatefulWidget {
  const Password({
    super.key,
    required this.passwordController,
  });

  final TextEditingController passwordController;

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  bool showPassword = true;

  void _toggleVisibility() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppTextField(
        obscureText: showPassword,
        suffixIcon: IconButton(
          icon: Icon(
            showPassword ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: _toggleVisibility,
        ),
        hintText: 'Your Password',
        controller: widget.passwordController);
  }
}

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
    return TextField(
      obscureText: obscureText,
      style: const TextStyle(color: Colors.red),
      decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
          ),
          hintText: hintText,
          suffixIcon: suffixIcon),
      controller: controller,
    );
  }
}
