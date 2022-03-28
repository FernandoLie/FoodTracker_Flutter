import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_tracker/constanta.dart';
import 'package:food_tracker/routes.dart' as route;

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

Widget buildName() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        'Name',
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
          keyboardType: TextInputType.name,
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

Widget buildConPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        'Confirm Password',
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

class _SignupState extends State<Signup> {
  bool _checked = false;
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
                        'Sign Up',
                        style: TextStyle(
                          color: greendefault(),
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 40),
                      buildName(),
                      const SizedBox(height: 20),
                      buildEmail(),
                      const SizedBox(height: 20),
                      buildPassword(),
                      const SizedBox(height: 20),
                      buildConPassword(),
                      CheckboxListTile(
                        title: Text(
                          "I would like to receive your newsletter and other promotional information.",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        value: _checked,
                        onChanged: (value) {
                          setState(() {
                            _checked = value!;
                          });
                        },
                        activeColor: Color.fromARGB(255, 233, 231, 231),
                        checkColor: greendefault(),
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                      CheckboxListTile(
                        title: Text(
                          "I have read and agreed to the terms and conditions.",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        value: _checked,
                        onChanged: (value) {
                          setState(() {
                            _checked = value!;
                          });
                        },
                        activeColor: Color.fromARGB(255, 233, 231, 231),
                        checkColor: greendefault(),
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                      const SizedBox(height: 120),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 25),
                margin: const EdgeInsets.only(left: 10, right: 10, top: 610),
                child: Column(
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, route.homePage),
                      child: const Text("Sign Up"),
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(440, 48),
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
                padding: const EdgeInsets.symmetric(horizontal: 2),
                margin: const EdgeInsets.only(left: 10, right: 10, top: 690),
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, route.signIn),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: greendefault(),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(440, 48),
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
