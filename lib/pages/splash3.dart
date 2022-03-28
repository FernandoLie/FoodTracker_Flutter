import 'package:flutter/material.dart';
import 'package:food_tracker/constanta.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_tracker/routes.dart' as route;

class Splash3 extends StatelessWidget {
  const Splash3({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: greendefault(),
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Container(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: const EdgeInsets.only(top: 70),
                    child: Text('FoodTracker',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: GoogleFonts.lilitaOne().fontFamily),
                    ),
                  ),
                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 80),
                    child: Image.asset('assets/images/splash3.png', width: 300, height: 300),
                  ),
                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: const EdgeInsets.only(top: 355, right: 20, left: 20),
                    child: Text('Good food choices are good investments', textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: GoogleFonts.roboto().fontFamily),
                    ),
                  ),
                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 30, right: 20),
                    child: TextButton(
                      onPressed: () => Navigator.pushNamed(context, route.signIn),
                      child: const Text("Done",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}