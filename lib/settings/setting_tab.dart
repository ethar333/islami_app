
import 'package:flutter/material.dart';
import 'package:project5/my_theme.dart';
import 'package:project5/providers/app_config_provider.dart';
import 'package:project5/settings/mode_bottom_sheet.dart';
import 'package:provider/provider.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({super.key});

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {

    var provider = Provider.of<AppConfigProvider>(context);    // object from provider:

    return Container(

     margin: const EdgeInsets.all(20),
      

     child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       
      const SizedBox(height: 45),
        
        Text('themeing',
        style: Theme.of(context).textTheme.displayLarge,
        
        ),

       const SizedBox(height: 10),


        Container(
        padding:const EdgeInsets.all(13),
         decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(24),
      

        ),

       child: GestureDetector(
        onTap: () {                     // function => To be executed when clicked on the row:
          
         showModeBottomSheet();


        },
         child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          

           Text( provider.isDarkMode()?
            'Dark' 
            :                                // else:
              
            'Light'


           ,
           
           style: Theme.of(context).textTheme.displaySmall,
         
           ),
         
           Icon(Icons.arrow_drop_down_outlined,
           size: 30,
           color: MyThemeData.whiteColor,
           ),
         
         
          ],
         ),
       ),
       


        ),


      ],
     ),


    );
  }

    // Function => To show bottom Sheet from bottom of the screen:
  void showModeBottomSheet() {

   showModalBottomSheet(          // Method => To show BottomSheet:
    context: context, 
    builder: (context) =>  ModeBottomSheet(), 
     // return the widget that displayed in bottomSheet:
  
  

    );


   }
}