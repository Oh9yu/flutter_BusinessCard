import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App bar'), backgroundColor: Colors.blueGrey,),
      body: Center(
        child: Text('Test'),
      ),
    );
  }
}
