
import 'package:flutter/material.dart';

   // Theme of App:
abstract class MyThemeData{       // data class (model) => represent the theme of App:
  
  static Color primaryLight = const Color(0xffB7935F);     // primary color of lightMode:
  static Color blackColor =  const Color(0xff242424);
  static Color whiteColor = Colors.white;
  static Color primaryDark = const Color(0xff141A2E);    // primary color of darkMode:
  static Color yellowColor = const Color(0xffFACC1D);



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

     displaySmall: TextStyle(
      color: whiteColor,
      fontSize: 22,
      fontWeight:FontWeight.bold

     ),

     headlineMedium:TextStyle(
      color: primaryLight,
      fontSize: 22,
      fontWeight:FontWeight.bold


     ) ,

      headlineSmall:TextStyle(
     
     color: blackColor,
      fontSize: 25,
      fontWeight:FontWeight.w600,


     ) ,


     titleLarge:TextStyle(
      color: whiteColor,
      fontSize: 22,
      fontWeight:FontWeight.bold,

     ), 

    ),

  ); 


    // darkMode:
  static ThemeData darkMode = ThemeData(

   primaryColor:primaryDark,
   scaffoldBackgroundColor: Colors.transparent,
   appBarTheme:  AppBarTheme(
      backgroundColor: Colors.transparent,  
      elevation: 0,
      iconTheme: IconThemeData(                   // arrow back in Appbar:
        color: whiteColor,
      ),  
   ),


    // Use it to change color of selected Icon that inside bottomNavigationBar: 
   bottomNavigationBarTheme: BottomNavigationBarThemeData(    

    selectedItemColor: yellowColor,     // Change color of selecteb tabs in buttomNavigation:
    
    unselectedItemColor: whiteColor,

   ), 



    textTheme: TextTheme(    // TextStyle to all Appbar in the App:
    displayLarge:TextStyle(  
      color: whiteColor,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
    
     titleMedium:  TextStyle(
      color: blackColor,
      fontSize: 25,
      fontWeight:FontWeight.w600,
     ),
     
     titleSmall:TextStyle(
      color: whiteColor,
      fontSize: 25,
      fontWeight: FontWeight.w400,
     ), 

     displaySmall: TextStyle(
      color: whiteColor,
      fontSize: 22,
      fontWeight:FontWeight.bold

     ),

     headlineMedium:TextStyle(
      color: primaryDark,
      fontSize: 22,
      fontWeight:FontWeight.bold

     ) ,

    
     headlineSmall:TextStyle(
     
     color: whiteColor,
      fontSize: 25,
      fontWeight:FontWeight.w600,


     ) ,
     
      titleLarge:TextStyle(
      color: blackColor,
      fontSize: 22,
      fontWeight:FontWeight.bold,

     ),



     
    ),

  );



}