import 'package:flutter/material.dart';
import 'package:tech/app_text.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final textEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text('Sign Up'),
            password(emailEditingController: emailEditingController),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: AppTextField(
                hintText: 'Sign up',
                controller: textEditingController,
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),
            // AppTextField(
            //   controller: emailEditingController,
            //   suffixIcon: const Icon(
            //     Icons.email,
            //     size: 100,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class password extends StatefulWidget {
  password({
    super.key,
    required this.emailEditingController,
  });

  final TextEditingController emailEditingController;

  @override
  State<password> createState() => _passwordState();
}

class _passwordState extends State<password> {
  bool _obscuretext = true;

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      obscureText: _obscuretext,
      hintText: 'Password',
      controller: widget.emailEditingController,
      suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscuretext = !_obscuretext;
            });
          },
          child: Icon(
            Icons.password,
          )),
    );
  }
}
