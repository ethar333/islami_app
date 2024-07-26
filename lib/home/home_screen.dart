import 'package:flutter/material.dart';
import 'package:project5/Hadeth/hadeth_tab.dart';
import 'package:project5/Quran/quran_tab.dart';
import 'package:project5/home/radio_tab.dart';
import 'package:project5/home/tasbeh_tab.dart';
import 'package:project5/my_theme.dart';
import 'package:project5/Quran/item_sura_name.dart';
import 'package:project5/settings/setting_tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  static const String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

    int selectedIndex = 0;      // Use it to control in any tab that is selected:

  @override
  Widget build(BuildContext context) {
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
              'Islami',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          
         bottomNavigationBar:Theme(      // To change background of bottomNavigation:

        data:Theme.of(context).copyWith(
           

         canvasColor: Theme.of(context).primaryColor,  // change color depend on the theme of the App:
        

       ),

           child: BottomNavigationBar(
            currentIndex: selectedIndex,           // The tab that the user selected it :

            onTap: (index) {                  // index => no. of tab that user clicked it:
              
             selectedIndex = index;
             setState(() {});                // To update UI:

            },

            
            items:
            const [
              BottomNavigationBarItem(
                icon:ImageIcon(AssetImage('assets/images/icon_quran.png'),),
                
                label: 'Quran',
                
                ),
           
           
                 BottomNavigationBarItem(
                icon:ImageIcon(AssetImage('assets/images/icon_hadeth.png'),),
                
                label: 'Hadeth',
                
                ),
                
                BottomNavigationBarItem(
                icon:ImageIcon(AssetImage('assets/images/icon_sebha.png'),),
                
                label: 'Tasbeh',
                
                ),
           
                BottomNavigationBarItem(
                icon:ImageIcon(AssetImage('assets/images/icon_radio.png'),),
                
                label: 'Radio',
                
                ),
           
                BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                
                label: 'Settings',
                
                ),


           
              ],
              
              ),
         ),




           body: tabs[selectedIndex],     // display tab depend on selectedIndex that user clicked it:






        ),
      ],
    );
  }

  List<Widget> tabs =[        // List => to store it 
   QuranTab(),
   Hadethtab(),
   TasbehTab(),
   RadioTab(),
   SettingTab()

  ];
}

