
import 'package:flutter/material.dart';
import 'package:project5/my_theme.dart';
import 'package:project5/Quran/item_sura_name.dart';
import 'package:project5/providers/app_config_provider.dart';
import 'package:provider/provider.dart';


class QuranTab extends StatelessWidget {
   QuranTab({super.key});

  // list => to store names of Sura:
  List<String> suraNames = [   
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];





  @override
  Widget build(BuildContext context) {
   
   var provider = Provider.of<AppConfigProvider>(context);    // object from provider:


    return Column(
            children: [
              Center(
                child: Image.asset('assets/images/qur2an_screen_logo.png'),
              ),
              Divider(
                
                color: provider.isDarkMode()?
                MyThemeData.yellowColor

                :                            // else:

                MyThemeData.primaryLight,
                thickness: 2,
              ),

              Text(
                'Sura Name',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              
              Divider(
                color:provider.isDarkMode()?
                MyThemeData.yellowColor
                
                :
                
                MyThemeData.primaryLight,
                thickness: 2,
              ),
              Expanded(
                child: ListView.separated(
                  //To make a separation between items in listView:
                  separatorBuilder: ((context, index) { 
                    return Divider(
                      color: provider.isDarkMode()?
                      MyThemeData.yellowColor
                     :
                      
                      MyThemeData.primaryLight,
                      thickness: 1,
                    );
                  }),

                  itemCount: suraNames.length,     // no. of items that display in listview:            
                  // index => no. of Sura that is displayed:
                  itemBuilder: (context, index) {
                    return ItemSuraName(name: suraNames[index],index: index,);
                  },
                ),
              ),
            ],
          ); 


  }
}  


