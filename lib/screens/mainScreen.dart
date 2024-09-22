import 'package:flutter/material.dart';

class mainScreen extends StatelessWidget {
  const mainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              //! Image
              Container(
                child: const Text("Image"),
              ),

              //! Text
              const Text("Text"),

              //! Buttons
              Column(
                children: [
                  //* Login button
                  Container(
                    child:
                        ElevatedButton(onPressed: () {}, child: Text('data')),
                  ),

                  //* Signup button
                  Container(
                    child: ElevatedButton(
                        onPressed: () {}, child: Text('sign up')),
                  )
                ],
              ),
              //! Divider
              Container(child: const Text('Divider')),

              //! Logo buttons
              const Row(
                children: [Text('Google'), Text('Facebook')],
              ),
              
              //! Agreement text
              Center(
                child: Container(
                  width: 250,
                  child: const Text(
                    "By clicking, you agree to our Terms of Service & Privacy Policy",
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
