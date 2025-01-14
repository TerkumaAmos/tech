import 'package:flutter/material.dart';
import 'package:tech/app_text.dart';
import 'package:tech/my_button.dart';

class ComeBack extends StatefulWidget {
  const ComeBack({super.key});

  @override
  State<ComeBack> createState() => _ComeBackState();
}

class _ComeBackState extends State<ComeBack> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(); // Initialize the controller
  }

// whats the use of the above and below
  @override
  void dispose() {
    _controller
        .dispose(); // Dispose of the controller when the widget is removed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1B35),
      // Dark blue background

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 120,
            ),
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/amos1.jpeg'),
            ),
            const SizedBox(height: 30),
            const Text(
              'Welcome Back',
              style: TextStyle(color: Colors.white, fontSize: 20, height: 1.0),
            ),
            const SizedBox(height: 25),
            const Text(
              'Flutter Presido ',
              style: TextStyle(color: Colors.yellow, fontSize: 30, height: 1.0),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                width: 400,
                height: 50,
                child: AppTextField(
                    hintText: 'Your Username', controller: _controller)),
            const SizedBox(
              height: 20,
            ),
            Container(width: 400, height: 50, child: MyButton(label: "Sign In"))
          ],
        ),
      ),
    );
  }
}
