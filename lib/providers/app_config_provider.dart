
 import 'package:flutter/material.dart';

  // Provider => contains data that be changed & will affect the App: 

  class AppConfigProvider extends ChangeNotifier{

  ThemeMode appTheme = ThemeMode.light;     // define Var of type themeMode (default theme of App):

    void changeTheme(ThemeMode newTheme){      // To Change Theme of App:

      if(appTheme == newTheme){

        return;                    // exist the function and not execute it:
      }
       
       appTheme = newTheme;

      notifyListeners();            // To update this change in other screens of the App:

    }
  
  
     bool isDarkMode(){              // function => know the Theme 

       return appTheme == ThemeMode.dark;

   }

  

 }
