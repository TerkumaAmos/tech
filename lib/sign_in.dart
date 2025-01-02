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
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                    const MyButton(),
                    // Row(
                    //   children: [
                    //     Icon(Icons.question_mark_sharp),
                    //     SizedBox(width: 15.0),
                    //     Text(
                    //       "Sign In With Google",
                    //       style: TextStyle(
                    //         color: Colors.white,
                    //         fontSize: 18,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Or With Email',
                      style: TextStyle(color: Colors.white),
                    ),
                    AppTextField(
                        hintText: 'Your Email', controller: emailController),
                    AppTextField(
                        hintText: 'Your Password',
                        controller: passwordController),
                    GestureDetector(
                      child: const Icon(
                        Icons.question_answer,
                        size: 100,
                      ),
                      onTap: () {
                        log(" Message ${emailController.text} ${passwordController.text}");
                      },
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.hintText,
    required this.controller,
  });

  final String hintText;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
        ),
        hintText: hintText,
      ),
      controller: controller,
    );
  }
}
