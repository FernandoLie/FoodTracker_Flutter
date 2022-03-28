import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_tracker/pages/signup.dart';
import 'package:food_tracker/constanta.dart';
import 'package:food_tracker/routes.dart' as route;

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

Widget buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        'Email',
        style: TextStyle(
            color: Colors.black54, fontSize: 14, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 233, 231, 231),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 50,
        child: const TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
          ),
        ),
      )
    ],
  );
}

Widget buildPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        'Password',
        style: TextStyle(
            color: Colors.black54, fontSize: 14, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 233, 231, 231),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 50,
        child: const TextField(
          obscureText: true,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
          ),
        ),
      )
    ],
  );
}

Widget buildForgotPassBtn() {
  return Container(
    alignment: Alignment.centerRight,
    child: Column(
      children: <Widget>[
        TextButton(
          onPressed: () => print("Forgot Password Pressed"),
          child: Text(
            "Forgot your password?",
            style: TextStyle(
              color: greendefault(),
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        )
      ],
    ),
  );
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Sign In',
                        style: TextStyle(
                          color: greendefault(),
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 70),
                      buildEmail(),
                      const SizedBox(height: 20),
                      buildPassword(),
                      buildForgotPassBtn(),
                      const SizedBox(height: 120),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 25),
                margin: const EdgeInsets.only(left: 10, right: 10, top: 420),
                child: Column(
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, route.homePage),
                      child: const Text("Sign In"),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(440, 48),
                        primary: greendefault(),
                        padding: const EdgeInsets.all(15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2),
                margin: const EdgeInsets.only(left: 10, right: 10, top: 510),
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, route.signUp),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.tealAccent[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(440, 48),
                        primary: Colors.white,
                        padding: const EdgeInsets.all(15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
