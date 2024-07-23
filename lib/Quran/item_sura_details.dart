

import 'package:flutter/material.dart';

class ItemSuraDetails extends StatelessWidget {
   ItemSuraDetails({super.key, required this.name});
   
  String name;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Text(name,            // text => this text is displayed inside the list:
        style: Theme.of(context).textTheme.titleSmall,
         textAlign:TextAlign.center,    
        ),
    );


  }
}