
import 'package:flutter/material.dart';
import 'package:project5/my_theme.dart';
import 'package:project5/providers/app_config_provider.dart';
import 'package:provider/provider.dart';


  // widget => responsible for body of Sebha:


 class TasbehTab extends StatefulWidget {
   TasbehTab({super.key});

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int counter = 0;
  int counterTasbeh = 0;              // To control tasbeh will be displayed:
  double angle = 0;                  // To control in  rotation:
  
  List<String> tasbehat = ['سبحان الله','الحمدلله','الله اكبر'];   // To store Tasbehat:


  @override
  Widget build(BuildContext context) {

   var provider = Provider.of<AppConfigProvider>(context);    // object from provider:

  double height = MediaQuery.of(context).size.height;    // height of the screen that we run on it: 
  double width  = MediaQuery.of(context).size.width;

    return Container(
      //height: double.infinity,
       width:double.infinity ,

      child: Column(
       // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      

        Container(                                           // To enlarge the Stack:
        height: height * 0.4,
        width: double.infinity,

        child: Stack(
          alignment: Alignment.topCenter,
          children: [
          
            Positioned(                                   // To move image inside Stack:
              right: width * 0.348,                       // 3/10 from width of screen:
              child: 
              provider.isDarkMode()?

              Image.asset('assets/images/head_sebha_dark.png',      // display sebha dark:
              width: width * 0.2,
              height: height * 0.132,
              fit: BoxFit.cover,
              )

              :
              
              Image.asset('assets/images/head_sebha_logo.png',
              width: width * 0.2,
              height: height * 0.132,
              fit: BoxFit.cover,
              ),
            ),
        
            Positioned(
               top: height * 0.1,
              child:
              
               provider.isDarkMode()?               // conditional operator:

               Transform.rotate(                    // To rotate Sebha:
                angle:angle ,
                child: Image.asset('assets/images/body_sebha_dark.png'))
            

              :         // else 
              
              
               Transform.rotate(
                angle: angle,
                child: Image.asset('assets/images/body_sebha_logo.png')),
              ),
        
        
          ],
        ),
      ),
      
          
       const SizedBox(height: 15),
      
      
      Text('Tasbeh Number',
      
      style: Theme.of(context).textTheme.titleSmall,
      
      
      ),
      
       GestureDetector(
         child: Container(
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(20),
         decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(25),
          color:Theme.of(context).primaryColor.withOpacity(0.6),
         
         ),
         
         child: Text('$counter',
         style: Theme.of(context).textTheme.titleSmall,
         ),
         
         ),
       ),
      

      
       GestureDetector(
        
        onTap: () {                // function that be executed when clicked on the container:
          
        if(counter == 30){
          counter = 0;                      // To count from the beginning:

        if(counterTasbeh == tasbehat.length-1){          

          counterTasbeh = 0;                 // To start from the beginning:
         
          }
          else {
          counterTasbeh++;
          }
        } 
          else{
           counter++; 
         }
       
        angle += 15;

        setState(() {});             // To update UI:

        },

         child: Container(
         margin: const EdgeInsets.all(10),
         padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color:
          provider.isDarkMode()?
           MyThemeData.yellowColor

          :

           MyThemeData.primaryLight,                      // else:

          ),

          
         
          child: Text(tasbehat[counterTasbeh],                  // To display Tasbehat:
          style: Theme.of(context).textTheme.titleLarge,     // Style of text:
          
          ),
         
         ),
       ),
      
      
      ],
      
      ),
    );
      
    

    
  }
}