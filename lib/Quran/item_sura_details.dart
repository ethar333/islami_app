
import 'package:flutter/material.dart';

   // this widget => is responsible for text (content of Sura) that display in the container:

class ItemSuraDetails extends StatelessWidget {
   ItemSuraDetails({super.key, required this.name});
   
  String name;             // content of sura that displayed in listview:


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Text(name,            // text => this text (content of sura) is displayed inside the list:
        style: Theme.of(context).textTheme.titleSmall,      // style of content:
         textAlign:TextAlign.center,    
        ),
    );


  }
}