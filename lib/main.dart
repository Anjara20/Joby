import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/pageAuth/inscription.dart';
import 'package:flutter_project/screens/home_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Lottie.asset('assets/pesquisar-job.json'),
        splashIconSize: 300,
        duration: 3000,
        splashTransition: SplashTransition.slideTransition,
        pageTransitionType: PageTransitionType.leftToRightWithFade,
        backgroundColor: Color.fromARGB(255, 17, 142, 201),
        animationDuration: Duration(seconds: 1),
        nextScreen: Inscription());
  }
}
