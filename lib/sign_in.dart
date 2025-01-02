import 'package:flutter/material.dart';
import 'package:tech/my_button.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF1A1B35),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 80.0),
                      child: Column(
                        children: [
                          MyButton(),
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
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Or With Email',
                            style: TextStyle(color: Colors.white),
                          ),
                          TextField(
                            decoration:
                                InputDecoration(labelText: 'Your Email'),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
