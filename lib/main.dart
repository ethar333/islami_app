import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:project5/Quran/Sura_details_screen.dart';
import 'package:project5/home/home_screen.dart';
import 'package:project5/my_theme.dart';
import 'package:project5/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  
   debugShowCheckedModeBanner: false,
   initialRoute:HomeScreen.routeName,
   routes:{
      HomeScreen.routeName:(context) => HomeScreen(),
      SplashScreen.routeName:(context) => SplashScreen(),
      SuraDetailsScreen.routeName:(context) => SuraDetailsScreen(),
   } ,

     
    theme:MyThemeData.lightMode ,
    //darkTheme: MyThemeData.darkMode,


    );
    
  }
}
    