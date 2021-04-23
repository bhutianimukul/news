import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:newsapp/screens/login_screen.dart';

class Logout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/news_icon.png',
      splashIconSize: 100,
      animationDuration: Duration(seconds: 2),
      splashTransition: SplashTransition.rotationTransition,
      nextScreen: LoginScreen(),
    );
  }
}
