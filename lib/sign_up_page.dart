import 'package:flutter/material.dart';
import 'package:tech/app_text.dart';

void main() {
  runApp(SignUpPage());
}

class SignUpPage extends StatelessWidget {
  final passwordediting = TextEditingController;
  final emailediting = TextEditingController;
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: AppTextField(
              hintText: 'Password',
              controller: TextEditingController(),
            ),
          ),
          AppTextField(hintText: "Sign up", controller: TextEditingController())
        ],
      ),
    );
  }
}
