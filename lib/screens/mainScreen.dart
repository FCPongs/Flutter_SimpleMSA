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
                height: constraints.maxHeight * 0.6,
                width: double.infinity,
                child: Image.asset(
                  'assets/loginImages/coffee.jpg',
                  fit: BoxFit.cover,
                ),
              ),

              //! Text
              const Text("Text"),

              //! Buttons
              Column(
                children: [
                  //* Login button
                  Container(
                    width: constraints.maxWidth * 0.8,
                    child:
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 243, 97, 87),
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {}, 
                          child: const Text('LOGIN',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          )),
                  ),

                  //* Signup button
                  Container(
                    width: constraints.maxWidth * 0.8,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.red,
                        side: BorderSide(
                          color: Colors.black,
                          width: 2,
                        )
                      ),
                        onPressed: () {}, 
                        child: const Text('SIGN UP',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        )),
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
