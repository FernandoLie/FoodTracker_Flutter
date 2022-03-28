import 'package:flutter/material.dart';
import 'package:food_tracker/pages/introslide.dart';
import 'package:food_tracker/pages/tabbar_widget.dart';
import 'package:food_tracker/pages/signin.dart';
import 'package:food_tracker/pages/signup.dart';
import 'package:food_tracker/pages/splash1.dart';
import 'package:food_tracker/pages/splash2.dart';
import 'package:food_tracker/pages/splash3.dart';

const String splashSatu = 'splash1';
const String splashDua = 'splash2';
const String splashTiga = 'splash3';
const String signIn = 'signin';
const String homePage = 'home';
const String signUp = 'signup';

void login() {}

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case splashSatu:
      return MaterialPageRoute(builder: (context) => const Splash1());
    case splashDua:
      return MaterialPageRoute(builder: (context) => const Splash2());
    case splashTiga:
      return MaterialPageRoute(builder: (context) => const Splash3());
    case signIn:
      return MaterialPageRoute(builder: (context) => const Signin());
    case homePage:
      return MaterialPageRoute(builder: (context) => const TabbarComponent());
    case signUp:
      return MaterialPageRoute(builder: (context) => const Signup());
    default:
      throw ('this route name does not exist');
  }
}
