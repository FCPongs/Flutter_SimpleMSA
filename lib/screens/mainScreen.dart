import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


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

              const SizedBox(
                height: 10,
              ),

              //! Text
              Container(
                width: constraints.maxWidth * 0.7,
                child: const Text(
                  "Coffee on your Desk Superfast...",
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              //! Buttons
              Column(
                children: [
                  //* Login button
                  Container(
                    width: constraints.maxWidth * 0.85,
                    height: constraints.maxHeight * 0.045,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 243, 97, 87),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  //* Signup button
                  Container(
                    width: constraints.maxWidth * 0.85,
                    height: constraints.maxHeight * 0.045,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.red,
                          side: const BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'SIGN UP',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        )),
                  )
                ],
              ),
              SizedBox(height: 10),
              //! Divider
              Container(child: const Text('Divider')),

              SizedBox(height: 20,),
              
              //! Logo buttons
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.google,
                    size: 25, 
                    color: Color.fromARGB(255, 238, 118, 118),
                  ),
                  SizedBox(width: 20,),
                  FaIcon(
                    FontAwesomeIcons.facebook, 
                    size: 25,
                    color: Colors.blue,
                  ),
                ]
              ),
              SizedBox(height:constraints.maxHeight * 0.02,),
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
