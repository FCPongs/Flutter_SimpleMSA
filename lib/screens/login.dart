import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';

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
                height: constraints.maxHeight * 0.5,
                width: double.infinity,
                child: AnotherCarousel(
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
            // //! Image
            // Container(
            //   height: 650,
            //   width: double.infinity,
            //   child: Image.asset(
            //     'assets/loginImages/coffee.jpg',
            //     fit: BoxFit.cover,
            //   ),
            // ),
            SizedBox(
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
                        Container(
                          width: constraints.maxWidth * 0.9,
                          height: 50,
                          child: const TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter OTP'),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        //! OTP input
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
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
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
                )),
          ],
        );
      },
    ));
  }
}
