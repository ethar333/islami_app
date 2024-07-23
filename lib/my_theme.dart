

import 'package:flutter/material.dart';

   // Theme of App:
class MyThemeData{       // data class (model) => represent the theme of App:
  
  static Color primaryLight = Color(0xffB7935F);     // primary color of lightMode:
  static Color blackColor = Color(0xff242424);
  static Color whiteColor = Colors.white;

  // object from type(themedata):
  // We write everything about Light mode:
  static ThemeData lightMode = ThemeData(
   primaryColor:primaryLight,
   scaffoldBackgroundColor: Colors.transparent,
   appBarTheme:  AppBarTheme(
      backgroundColor: Colors.transparent,  
      elevation: 0,
      iconTheme: IconThemeData(                   // arrow back in Appbar:
        color: blackColor,
      ),  
   ),


    // Use it to change color of selected Icon that inside bottomNavigationBar: 
   bottomNavigationBarTheme: BottomNavigationBarThemeData(    

    selectedItemColor: blackColor,     // Change color of selecteb tabs in buttomNavigation:
    
    unselectedItemColor: whiteColor,

   ),



    textTheme: TextTheme(    // TextStyle to all Appbar in the App:
    displayLarge:TextStyle(  
      color: blackColor,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
    
     titleMedium:  TextStyle(
      color: blackColor,
      fontSize: 25,
      fontWeight:FontWeight.w600,
     ),
     
     titleSmall:TextStyle(
      color: blackColor,
      fontSize: 25,
      fontWeight: FontWeight.w400,
     ), 

     




    ),

  ); 



  static ThemeData darkMode = ThemeData();



}