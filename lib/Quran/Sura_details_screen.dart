
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project5/Quran/item_sura_details.dart';
import 'package:project5/Quran/sura_detail_arguments.dart';
import 'package:project5/my_theme.dart';

   // widget => display content of sura:
 
class SuraDetailsScreen extends StatefulWidget {
   SuraDetailsScreen({super.key});
  static const String routeName = 'sura_details_screen';    //To distinguish this screen:
  
  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  
  List<String> verses = [];           // To receive in it content(lines) from lines List:
  // this List => will displayed inside listView:                                    

  @override
  Widget build(BuildContext context) {
   
   // To receive data from the screen before:
   // args => object from type dataclass :
    var args = ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
      
      if(verses.isEmpty)      // as long as list that displayed is empty => execute this function:                 
      {
         loadQuranFile(args.index); 
      }
                     


    return Stack(
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
              '${args.name}',              // Use the data that received:
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          
         
          body: Container(
            decoration: BoxDecoration(
              color: MyThemeData.whiteColor,
              borderRadius: BorderRadius.circular(24),
            ),
           
           margin: const EdgeInsets.symmetric(horizontal: 24,vertical: 50),

           child:
           /*
              conditional operator:
              condition ? true : false
           */
            verses.isEmpty?             // as long as list is empty,displayed Loading:
           
            Center(
              child: CircularProgressIndicator(                  // Indicator Loading:      
                color: Theme.of(context).primaryColor,
              ),
            ) :
           
            ListView.separated(             // listView=> To display inside it content of file:
            itemBuilder: (context,index){

            return ItemSuraDetails(name: verses[index]);  // return => the widget that is displayed in listView:
             
            },

            separatorBuilder:  ((context, index) { 
                    return Divider(
                      color: MyThemeData.primaryLight,
                      thickness: 1,
                    );
                  }),

             itemCount:verses.length,             // Length of listView:
             
             ),
           
          ),

        ),
      ],
    );


  }

  void loadQuranFile(int index)async{                 // function => To read from file:
     
       // filecontent => store it that read from file:
   String fileContent = await rootBundle.loadString('assets/files/${index+1}.txt');
      // lines => list store it lines that inside file:
     List<String> lines = fileContent.split('\n');      // lines => list:
     //print(lines);
     verses = lines;              // after return list of String(lines), store it in verses list:
     
     setState(() {});            // To update UI:

  }
}