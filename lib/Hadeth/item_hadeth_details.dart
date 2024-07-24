
import 'package:flutter/material.dart';


 // this widget => is responsible for text (content of hadeth) that display in the container:
 // this widget => To make a style to text (content of hadeth) that display in the container:

class ItemHadethDetails extends StatelessWidget {
   ItemHadethDetails({super.key,required this.name});
   
   String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Text(name,          // text => this text (content of hadeth) is displayed inside the list:
        style: Theme.of(context).textTheme.titleSmall,      // style of hadeth content:
         textAlign:TextAlign.center, 

        ),

    );

  }
}