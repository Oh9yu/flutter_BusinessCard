import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/user.png',
              width: 180,
              height: 180,
            ),
            Container(
              margin: EdgeInsets.only(top: 32),
              child: Text(
                'Business Card',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
