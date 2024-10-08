import 'package:flutter/material.dart';
import 'package:whatsapp/color.dart';

class Leadingscreen extends StatelessWidget {
  const Leadingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            const Text(
              "Welcome to Whatsapp",
              style: TextStyle(fontSize: 33, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: size.height / 9),
            Image.asset(
              "assets/images/bg.png",
              height: 340,
              width: 340,
              color: tabColor,
            ),
            SizedBox(height: size.height / 9),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Read our Privacy. "Agree and continue" to accept the terms & conditions',
                style: TextStyle(color: greyColor),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
