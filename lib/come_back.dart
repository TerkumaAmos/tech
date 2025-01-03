import 'package:flutter/material.dart';

class ComeBack extends StatelessWidget {
  const ComeBack({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
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
          )
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: ComeBack()));
}
