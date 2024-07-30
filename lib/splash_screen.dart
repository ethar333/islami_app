

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:project5/home/home_screen.dart';
import 'package:project5/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({super.key});
 
  static const String routeName = 'splash_screen';
  
  @override
  Widget build(BuildContext context) {

   var provider = Provider.of<AppConfigProvider>(context);    // object from provider:


    // TODO: implement build
    
   return  Scaffold(
     
     body:AnimatedSplashScreen(
      splashTransition: SplashTransition.rotationTransition,
      splashIconSize: double.infinity,
      animationDuration: const Duration(seconds:3),
      splash: 
       
       provider.isDarkMode()?
       
       Image.asset('assets/images/splash – 1@3x dark.png',      // display dark splash Screen:
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover,                    // Use it To make the image take the entire screen:
      
      )

      :                                    // else:
     
      
      Image.asset('assets/images/splash_image.png',
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover,                    // Use it To make the image take the entire screen:
      
      ), 
      nextScreen: const HomeScreen(),
      
      ),


    );

  }

 }

 