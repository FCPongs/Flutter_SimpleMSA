import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //! Image
            Container(
              height: 650,
              width: double.infinity,
              child: Image.asset('assets/loginImages/coffee.jpg',
              fit: BoxFit.cover,
              ),
            ),
            const Text("LOGIN"),
            const Column(
              
              children: [
                Text("Enter your number"),
                Text("Enter OTP"),
              ],
            )
          ],
        );
      },
    ));
  }
}
