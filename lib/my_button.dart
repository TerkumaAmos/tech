import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        elevation: 8.0,
        borderRadius: BorderRadius.circular(20.0),
        child: InkWell(
          child: Container(
            height: 50,
            width: 200,
            child: const Row(
              children: [
                Icon(Icons.question_mark),
                SizedBox(
                  width: 8,
                ),
                Text('Sign in With Google'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
