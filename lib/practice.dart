import 'package:flutter/material.dart';
import 'package:tech/app_text.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  final emaileditinggcontroller = TextEditingController();
  final passwordeditingcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Text('Hello'),
          Center(
            child: AppTextField(
              hintText: "sign Up",
              controller: emaileditinggcontroller,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          newPassword(passwordeditingcontroller: passwordeditingcontroller),
        ],
      )),
    );
  }
}

class newPassword extends StatefulWidget {
  const newPassword({
    super.key,
    required this.passwordeditingcontroller,
  });

  final TextEditingController passwordeditingcontroller;

  @override
  State<newPassword> createState() => _newPasswordState();
}

class _newPasswordState extends State<newPassword> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return AppTextField(
      obscureText: _obscureText,
      hintText: "Password",
      controller: widget.passwordeditingcontroller,
      suffixIcon: GestureDetector(
        onTap: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
        child: const Icon(
          Icons.password_outlined,
        ),
      ),
    );
  }
}
