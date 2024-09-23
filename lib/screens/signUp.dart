import 'package:flutter/material.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return Center(
          child: Card(
            elevation: 10,
            child: Container(
              width: constraints.maxWidth * 0.7,
              height: constraints.maxHeight * 0.6,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("First name"),
                Text("Last name"),
                Text("Email"),
                Text("Password (6 or more characters)"),

                Text("By clicking, you agree to our Terms of Service & Privacy Policy"),

                //! Buttons and Divider
                Column(
                  children: [
                    Text("Join now"),
                    Text("2 logos"),

                    Text("Already on the app? Sign in")
                  ],
                )
                ]
              ),
            ),
          ),
        );
      }),
    );
  }
}
