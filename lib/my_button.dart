import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    this.onTap,
    required this.label,

    ///required this.Radius
  });

  final Function()? onTap;
  // final double Radius;
  final String? label;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            colors: [
              Colors.white,
              Colors.red,
            ],
          ),
        ),
        child: Text(
          label ?? '',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 200,
          ),
        ),
      ),
    );
  }
}
