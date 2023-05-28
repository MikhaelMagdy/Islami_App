import 'package:flutter/material.dart';
import 'package:islami_app/islamiApp/HadethBages/hadethBages.dart';
import 'package:islami_app/islamiApp/QuranBages/quranBages.dart';
import 'package:islami_app/islamiApp/RadioBages/radioBages.dart';
import 'package:islami_app/islamiApp/SebhaBages/sebhaBages.dart';

class HomeScreen extends StatefulWidget {
  static const String routename="homescreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int BottomNum=0 ;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/background.png"),fit: BoxFit.fill,)),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Islami")),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: BottomNum,
          onTap: (index){
            setState(() {
              BottomNum=index;
            });
          },
          items: [
            BottomNavigationBarItem(icon:ImageIcon((AssetImage("assets/images/quran.png"))),label:'quran',
                backgroundColor: Theme.of(context).primaryColor
            ),
            BottomNavigationBarItem(icon:ImageIcon((AssetImage("assets/images/sebha.png"))),label: "sebha",
                backgroundColor: Theme.of(context).primaryColor
            ),
            BottomNavigationBarItem(icon:ImageIcon((AssetImage("assets/images/radio.png"))),label: "radio",
                backgroundColor: Theme.of(context).primaryColor
            ),
            BottomNavigationBarItem(icon:ImageIcon((AssetImage("assets/images/hadeth.png"))),label: 'hadeth',
                backgroundColor: Theme.of(context).primaryColor
            ),
          ],
        ),
        body: bages[BottomNum],
        ),
    );
  }
  List<Widget>bages=[
    quranBages(),
    sebhaBages(),
    radioBages(),
    hadethBages(),
  ];
}
