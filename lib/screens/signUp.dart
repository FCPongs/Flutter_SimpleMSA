import 'package:flutter/material.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints){
          return const Column(
            children: [
              Text("Test")
            ],
          );
        }
        ),
    );
  }
}
