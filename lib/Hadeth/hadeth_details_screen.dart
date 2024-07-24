

import 'package:flutter/material.dart';
import 'package:project5/Hadeth/hadeth_content.dart';
import 'package:project5/Hadeth/item_hadeth_details.dart';
import 'package:project5/my_theme.dart';

class HadethDetailsScreen extends StatelessWidget {
  const HadethDetailsScreen({super.key});

   static const String routeName = 'hadeth_details_screen';   // routeName of this screen:

 
  @override
  Widget build(BuildContext context) {

    // receive The data:
    // args => object of dataclass (Hadeth):
    // args => has title and content of hadeth:
    var args = ModalRoute.of(context)!.settings.arguments as Hadeth ;
    

    return 
    Stack(
      children: [
        Image.asset(
          'assets/images/background.png',
          width: double.infinity,
          height: double.infinity,
        ),
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              '${args.title}',              // Use the data that received:
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          
         
          body: Container(
            decoration: BoxDecoration(
              color: MyThemeData.whiteColor,
              borderRadius: BorderRadius.circular(24),
            ),
           
           margin: const EdgeInsets.symmetric(horizontal: 24,vertical: 50),

           child:ListView.builder(             // listView=> To display inside it content of hadeth:
            itemBuilder: (context,index){

              return ItemHadethDetails(name:args.content[index]);   // return => the widget that is displayed in listView:
             
            },

             // content => List of string:
             itemCount:args.content.length,             // Length of listView:
             


             ),
           
          ),

        ),
      ],

    );


  }
}