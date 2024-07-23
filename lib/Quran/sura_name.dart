
import 'package:flutter/material.dart';
import 'package:project5/Quran/Sura_details_screen.dart';
import 'package:project5/Quran/sura_detail_arguments.dart';

  // custom widget => display name of Sura in listView:
class SuraName extends StatelessWidget {  
   SuraName({super.key,required this.name,required this.index});
   
   String name;      // name of Sura:
   int index;       // no.of Sura:

  @override
  Widget build(BuildContext context) {
    return GestureDetector(          // To enable her child that receive click from user:
      onTap: () {                    // function => to be executed when clicked on the text:
        
      Navigator.of(context).pushNamed(SuraDetailsScreen.routeName,
      arguments:SuraDetailsArgs(name: name, index:index ),  // send data:
      
      );

      },
      child: Text(name,            // text => this text is displayed inside the list:
      style: Theme.of(context).textTheme.titleSmall,
       textAlign:TextAlign.center,    
      ),
    );

  }
}