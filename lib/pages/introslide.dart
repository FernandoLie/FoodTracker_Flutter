// import 'package:flutter/material.dart';
// import 'package:food_tracker/constanta.dart';
// import 'package:introduction_screen/introduction_screen.dart';
// import 'package:google_fonts/google_fonts.dart';

// class IntroSlide extends StatelessWidget {
//   const IntroSlide({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) => SafeArea(
//     child: IntroductionScreen(
//       pages: [
//         PageViewModel(
//           title: 'FoodTracker',
//           body: 'Keep track of your daily calorie intake never been this easy!',
//           image: buildImage('assets/images/splash.png'),
//           decoration: getPageDecoration(),
//         ),
//         PageViewModel(
//           title: 'FoodTracker',
//           body: 'Monitor Your Calorie Intake,',
//           image: buildImage('assets/images/splash2.png'),
//           decoration: getPageDecoration(),
//         ),
//         PageViewModel(
//           title: 'FoodTracker',
//           body: 'Lorem ipsum',
//           image: buildImage('assets/images/splash3.png'),
//           decoration: getPageDecoration(),
//         ),
//       ],
//       done: Text(
//           'skip', 
//           style: TextStyle(
//               fontWeight: FontWeight.normal, 
//               fontSize: 24,
//               fontFamily: GoogleFonts.lilitaOne().fontFamily),
//               //color: colo,
//     ),//tes dlu yaa
//     onDone: () {},//iyaa 
//   ),
//   );

//   Widget buildImage(String path) =>
//   Center(child: Image.asset(path, width: 350));

//   PageDecoration getPageDecoration() => PageDecoration(
//     titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//     bodyTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//     // descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
//     imagePadding: EdgeInsets.all(35),
//     pageColor: greendefault(),
//     );
// }