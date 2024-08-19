import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:todo/view/home_screen/home_screen.dart';
import 'package:todo/util/animation_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 7)).then((value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>HomeScreen() ,)));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.asset(AnimationConstants.SPLASH_LOGO) ,
      ),
      
    );
  }
}