import 'package:flutter/material.dart';
import 'package:food_tracker/constanta.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: greendefault(),
        body: Center(
          child: Center(
            child: SizedBox(
              width: 150,
              height: 250,
              child: Image.asset("assets/images/logo.png"),
            ),
          ),
        ),
      ),
    );
  }
}