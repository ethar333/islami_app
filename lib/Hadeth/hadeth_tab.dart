import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project5/Hadeth/hadeth_content.dart';
import 'package:project5/Hadeth/item_hadeth_name.dart';
import 'package:project5/my_theme.dart';

class Hadethtab extends StatefulWidget {
   Hadethtab({super.key});

  @override
  State<Hadethtab> createState() => _HadethtabState();
}

class _HadethtabState extends State<Hadethtab> {
  
  // list of objects: that display in listView:
  // list => it has title and content:
  List <Hadeth> HadethContent = [];             // to receive in it content of hadeth:


  @override
  Widget build(BuildContext context) {

        if (HadethContent.isEmpty)   // call function when list be displayed is empty:
         {
             loadHadethFile();
         }

    return Column(
      children: [

         Expanded(
          flex: 1,
          child: Image.asset('assets/images/hadeth_logo.png'),
          ),

         Divider(
          color: MyThemeData.primaryLight,
          thickness: 2,
         ),

           Text('Hadeth Name',
            style: Theme.of(context).textTheme.titleMedium,

          ),

          Divider(
                color: MyThemeData.primaryLight,
                thickness: 2,
              ),

         Expanded(
                flex: 3,
                child:
                
                 /*
                 condition ? true : false 
                 */
                 
                 // display indicator when list is empty:
                 HadethContent.isEmpty? Center(
                   child: CircularProgressIndicator(
                    
                     color: Theme.of(context).primaryColor,
                   
                   ),
                 ):
                
                 ListView.separated(
                  //To make a separation between items in listView:
                  separatorBuilder: ((context, index) { 
                    return Divider(
                      color: MyThemeData.primaryLight,
                      thickness: 1,
                    );
                  }),

                  itemCount:HadethContent.length,     // no. of items that display in listview:            
                  // index => no. of Sura that is displayed:
                  itemBuilder: (context, index) {           // display title of Ahadeth:
                    return HadethName(hadeth: HadethContent[index]);
                  
              
                  },
                ),
              ),

      ],
    );
    
  }

   void loadHadethFile()async{            // function => To read hadeth file:

   String allAhadethContent = await rootBundle.loadString('assets/files/ahadeth .txt');
    
    //print(allAhadethContent);      // to make sure this function is work:
    
    // list(allHadethList) => stored the hadeths separately in this list:
   // split => Use it to seprate between each haeth and the other:
    List<String> allHadethList = allAhadethContent.split('#\r\n');    // 50 separate hadeth:
     for(int i=0 ; i<allHadethList.length; i++){        // forLoop => to split each hadeth:
       //print(allHadethList[i]);
      
      List<String> allAhadethLines = allHadethList[i].split('\n');  //Split each hadeth to lines:
      // allAhadethLines => List , store in it Alhadeth as Lines:                                                      
      
      String title = allAhadethLines[0];              // set first line in list as title:
      allAhadethLines.removeAt(0);                   // remove first line from list :
      //this mean => rest of lines in list => is the content:


      Hadeth hadeth = Hadeth(title: title, content: allAhadethLines);  // object from dataclass:
      
      HadethContent.add(hadeth);          // add object in empty list:
       setState(() {});

     }




   /*void hadethFile()async{

    String fileContent = await rootBundle.loadString('assets/files/ahadeth .txt');
    List<String> fileContentList = fileContent.split('#\r\n');
    for(int i=0 ; i<fileContentList.length ; i++){

      List<String> contentLines = fileContentList[i].split('\n');
     
     String title = contentLines[0];      // title:
     contentLines.removeAt(0);   
      
      Hadeth hadeth = Hadeth(title: title, content:contentLines);
      
      HadethContent.add(hadeth);   

    }
   
   }*/


   }
}