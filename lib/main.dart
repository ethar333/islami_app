
import 'package:flutter/material.dart';
import 'package:project5/Hadeth/hadeth_details_screen.dart';
import 'package:project5/Quran/Sura_details_screen.dart';
import 'package:project5/home/home_screen.dart';
import 'package:project5/my_theme.dart';
import 'package:project5/my_theme.dart';
import 'package:project5/providers/app_config_provider.dart';
import 'package:project5/splash_screen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(ChangeNotifierProvider(       // To the change affects the entire application:
    create: (context) => AppConfigProvider(),       // return provider:
    child: const MyApp()));
}

 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

     var provider = Provider.of<AppConfigProvider>(context);    // object from provider:

    return MaterialApp(  
   debugShowCheckedModeBanner: false,

   initialRoute:SplashScreen.routeName,
   routes:{
      HomeScreen.routeName:(context) => const HomeScreen(),
      SplashScreen.routeName:(context) =>  SplashScreen(),
      SuraDetailsScreen.routeName:(context) => const SuraDetailsScreen(),
      HadethDetailsScreen.routeName:(context) => const HadethDetailsScreen(),
   } ,

     
     theme:MyThemeData.lightMode,
     darkTheme: MyThemeData.darkMode,
     
     // themeMode: ThemeMode.dark,             // To change theme of App:
    
      //themeMode: provider.appTheme,

      themeMode:provider.appTheme ,


    );
    
  }
}
    