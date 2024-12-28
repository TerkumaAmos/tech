import 'package:flutter/material.dart';
import 'package:tech/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xFF1A1B35), // Dark blue background
          body: SignIn()
          // Column(
          //   children: [
          //     Expanded(
          //       flex: 2,
          //       child: Stack(
          //         children: [
          //           // Add your illustration here using Image.asset
          //           Image.asset(
          //             'assets/web1.jpeg',
          //             // width: 300,
          //             // height: 400,
          //             //fit: BoxFit.fill,
          //           ),
          //         ],
          //       ),
          //     ),
          //     Expanded(
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //         children: [
          //           const Text(
          //             'Foda',
          //             style: TextStyle(
          //               color: Colors.white,
          //               fontSize: 24,
          //               fontWeight: FontWeight.bold,
          //             ),
          //           ),
          //           const Text(
          //             'Welcome to\nFood Delivery',
          //             textAlign: TextAlign.center,
          //             style: TextStyle(
          //               color: Color(0xFFE8B687), // Golden text color
          //               fontSize: 28,
          //               fontWeight: FontWeight.bold,
          //             ),
          //           ),
          //           Padding(
          //             padding: const EdgeInsets.symmetric(horizontal: 40),
          //             child: Column(
          //               children: [
          //                 ElevatedButton(
          //                   onPressed: () {},
          //                   style: ElevatedButton.styleFrom(
          //                     backgroundColor:
          //                         const Color(0xFFE57373), // Pink button
          //                     minimumSize: const Size(double.infinity, 50),
          //                     shape: RoundedRectangleBorder(
          //                       borderRadius: BorderRadius.circular(25),
          //                     ),
          //                   ),
          //                   child: const Text('Sign In'),
          //                 ),
          //                 const SizedBox(height: 16),
          //                 ElevatedButton(
          //                   onPressed: () {},
          //                   style: ElevatedButton.styleFrom(
          //                     backgroundColor:
          //                         const Color(0xFF2A2B45), // Dark blue button
          //                     minimumSize: const Size(double.infinity, 50),
          //                     shape: RoundedRectangleBorder(
          //                       borderRadius: BorderRadius.circular(25),
          //                     ),
          //                   ),
          //                   child: const Text('Sign Up'),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
          ),
    );
  }
}
