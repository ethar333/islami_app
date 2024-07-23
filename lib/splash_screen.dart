import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:project5/home/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const String routeName = 'splash_screen';
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
   return  Scaffold(
     
     body:AnimatedSplashScreen(
      splashIconSize: double.infinity,
      animationDuration: Duration(seconds:30),
      //splashTransition: SplashTransition.rotationTransition,
      splash: Image.asset('assets/images/splash_image.png',
      
      ), 
      nextScreen: HomeScreen(),
      
      ),


    );

  }

 }

 