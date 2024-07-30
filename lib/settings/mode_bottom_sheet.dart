
import 'package:flutter/material.dart';
import 'package:project5/my_theme.dart';
import 'package:project5/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

 // Widget => is responsible for things that displayed in bottomSheet:
  
  class ModeBottomSheet extends StatefulWidget {
  const ModeBottomSheet({super.key});

  @override
  State<ModeBottomSheet> createState() => _ModeBottomSheetState();
}

class _ModeBottomSheetState extends State<ModeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    
    var provider = Provider.of<AppConfigProvider>(context);    // object from provider:
    
    return  Container(
     
     margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),

     child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
       GestureDetector(

       onTap: () {
         
         provider.changeTheme(ThemeMode.light);

       },

         child: provider.appTheme == ThemeMode.light?
         getSelectedItemWidget('Light') 
         :
        getUnSelectedItemWidget('Light'),

         
       ), 
       

       const SizedBox(height: 15),
       
      GestureDetector(
        onTap: () {
          
         provider.changeTheme(ThemeMode.dark);   // To change theme to darkTheme:

        },

        child: provider.isDarkMode()?
        getSelectedItemWidget('Dark')      // To make dark selected:
        :                                  // else:
        getUnSelectedItemWidget('Dark'),



      ),   

      ],
     ),

    );


  }
   

   Widget getSelectedItemWidget(String text){

    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text( text,
             
             style: Theme.of(context).textTheme.headlineMedium,
             
             ),


         Icon(Icons.check,
         size: 30,
         color:Theme.of(context).primaryColor,
        
         ),

           ],
         );

   }


   Widget getUnSelectedItemWidget(String text){

    return Text(text,
          style: Theme.of(context).textTheme.titleMedium,      
        
        );



   }






}