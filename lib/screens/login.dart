import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        
        child: Column(
          
          children: [
            Text("Image"),
            
            //! Text
            Column(
              children: [
                Text("Coffee on your Desk"),
                Text("Superfast.."),
              ],
            ),

            //! Buttons
            Column(
              children: [
                Text("Column: Login"),
                Text("Column: Signup"),
              ],
            ),

            //! Divider with text
            Text("Divider"),

            //! Row for Google and Facebook Logo
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Row: Google Logo and Facebook Logo"),
              ],
            ),
            Text("Random Text")
          ],
        ),
      ),
    );
  }
}
