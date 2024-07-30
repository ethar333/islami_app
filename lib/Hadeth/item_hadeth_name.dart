

import 'package:flutter/material.dart';
import 'package:project5/Hadeth/hadeth_content.dart';
import 'package:project5/Hadeth/hadeth_details_screen.dart';

  // HadethName(widget) => resposible for name (title) of hadeth:

 class HadethName extends StatelessWidget {  
   HadethName({super.key  , required this.hadeth});
   
    Hadeth hadeth;         // object from dataclass To reach the title:
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(          // To enable her child that receive click from user:
      onTap: () {                    // function => to be executed when clicked on the text:
        
      Navigator.of(context).pushNamed(HadethDetailsScreen.routeName,
      arguments: hadeth,             // send data:

      );

      },

      // Text=> Carry title of hadeth:
      child: Text(hadeth.title,   // text => this text is displayed inside the list,(title of hadeth):
      style: Theme.of(context).textTheme.titleSmall,
       textAlign:TextAlign.center,    
      ),
    );

  }
}