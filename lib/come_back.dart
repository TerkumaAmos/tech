import 'package:flutter/material.dart';

class ComeBack extends StatelessWidget {
  const ComeBack({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF1A1B35), // Dark blue background

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 120,
            ),
            CircleAvatar(
              radius: 60,
            ),
            SizedBox(height: 8),
            Text(
              'Welcome Back',
              style: TextStyle(color: Colors.blue, fontSize: 40, height: 1.0),
            ),
            SizedBox(height: 25),
            Text(
              'Flutter Fairy',
              style: TextStyle(color: Colors.blue, fontSize: 40, height: 1.0),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: ComeBack()));
}
