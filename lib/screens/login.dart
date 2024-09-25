import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: constraints.maxHeight * 0.55,
                width: double.infinity,
                child: AnotherCarousel(
                  animationDuration: Durations.medium1,
                  dotBgColor: Colors.transparent,
                  dotIncreasedColor: const Color.fromARGB(255, 241, 98, 87),
                  autoplay: true,
                  images: [
                    Image.asset(
                      'assets/loginImages/coffee1.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/loginImages/coffee.jpg',
                      fit: BoxFit.cover,
                    ),
                    const ExactAssetImage(
                      "assets/loginImages/coffee2.jpg",
                    )
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //! Login text
                    const Text(
                      "LOGIN",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //! Number input
                        Container(
                          width: constraints.maxWidth * 0.9,
                          height: 50,
                          child: const TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),

                                hintText: 'Enter number'),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        //! OTP input
                        Container(
                          width: constraints.maxWidth * 0.9,
                          height: 50,
                          child: const TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.red,
                                  )
                                ),
                                hintText: 'Enter OTP'),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        //! Button
                        Container(
                          width: constraints.maxWidth * 0.9,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 247, 110, 100),
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {},
                              child: Text("LOGIN")),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ],
                )),
            //! Divider
            Center(
              child: Container(
                width: constraints.maxWidth * .75,
                child: const Row(children: [
                  Expanded(child: Divider()),
                  SizedBox(
                    width: 10,
                  ),
                  Text("or Login with"),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(child: Divider()),
                ]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //! Icons
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
            ]),
            SizedBox(
              height: constraints.maxHeight * 0.01,
            ),
            Expanded(
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  width: 250,
                  child: const Text(
                    "By clicking, you agree to our Terms of Service & Privacy Policy",
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    ));
  }
}
