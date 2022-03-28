import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_tracker/bloc/dinner/dinner_bloc.dart';
import 'package:food_tracker/bloc/lunch/lunch_bloc.dart';
import 'package:food_tracker/bloc/snack/snack_bloc.dart';
import 'package:food_tracker/pages/signin.dart';
import 'package:food_tracker/pages/signup.dart';
import 'package:food_tracker/pages/splash.dart';
import 'package:food_tracker/pages/tabbar_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'routes.dart' as route;
import 'bloc/breakfast/breakfast_bloc_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(const Duration(seconds: 10)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SplashScreen();
          } else {
            return MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => BreakfastBlocBloc(),
                ),
                BlocProvider(
                  create: (context) => LunchBloc(),
                ),
                BlocProvider(
                  create: (context) => DinnerBloc(),
                ),
                BlocProvider(
                  create: (context) => SnackBloc(),
                ),
              ],
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'FoodTracker',
                theme: ThemeData.light().copyWith(
                  scaffoldBackgroundColor: Colors.white,
                  textTheme:
                      GoogleFonts.robotoTextTheme(Theme.of(context).textTheme)
                          .apply(bodyColor: Colors.black),
                  canvasColor: Colors.white,
                ),
                onGenerateRoute: route.controller,
                initialRoute: route.splashSatu,
              ),
            );
          }
        });
  }
}
