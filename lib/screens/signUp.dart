import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return Center(
          child: Card(
            elevation: 35,
            child: Container(
              width: constraints.maxWidth * 0.7,
              height: constraints.maxHeight * 0.65,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //! First name
                          const Text("First name"),
                          Container(
                            width: constraints.maxWidth * 0.6,
                            child: const TextField(),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          //! Last name
                          const Text("Last name"),
                          Container(
                            width: constraints.maxWidth * 0.6,
                            child: const TextField(),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          //! Email
                          const Text("Email"),
                          Container(
                            width: constraints.maxWidth * 0.6,
                            child: const TextField(),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          //! Password
                          const Text("Password (6 or more characters)"),
                          Container(
                            width: constraints.maxWidth * 0.6,
                            child: const TextField(),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Container(
                        width: constraints.maxWidth * 0.6,
                        child: const Text(
                          "By clicking, you agree to our Terms of Service & Privacy Policy",
                          textAlign: TextAlign.center,
                          softWrap: true,
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    //! Buttons and Divider
                    Center(
                      child: Column(
                        children: [
                          Container(
                            width: constraints.maxWidth * 0.6,
                            height: 35,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 247, 110, 100),
                                  foregroundColor: Colors.white,
                                ),
                                child: const Text("Join now")),
                          ),
                          SizedBox(
                            height: constraints.maxHeight * 0.02,
                          ),
                          //! Divider
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: constraints.maxWidth * .15,
                                  child: Divider(),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text("or Login with"),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: constraints.maxWidth * .15,
                                  child: Divider(),
                                ),
                              ]),
                          SizedBox(
                            height: constraints.maxHeight * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/home');
                                },
                                icon: const FaIcon(
                                  FontAwesomeIcons.google,
                                  size: 25,
                                  color: Color.fromARGB(255, 238, 118, 118),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const FaIcon(
                                FontAwesomeIcons.facebook,
                                size: 25,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: constraints.maxHeight * 0.01,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.grey, fontSize: 14.0),
                            children: <TextSpan>[
                              const TextSpan(text: "Already on the app? "),
                              TextSpan(
                                text: "Sign in",
                                style: const TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(context,
                                        '/login');
                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ]),
            ),
          ),
        );
      }),
    );
  }
}
