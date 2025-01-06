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
          AppTextField(
            hintText: "sign Up",
            controller: emaileditinggcontroller,
          ),
          AppTextField(
              hintText: "Password", controller: passwordeditingcontroller)
        ],
      )),
    );
  }
}
