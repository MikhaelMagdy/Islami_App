import 'package:flutter/material.dart';
import 'package:islami_app/islamiApp/SuraDetails/Sura_Details.dart';
import 'TextStyle.dart';

class quranBages extends StatelessWidget {
  List<String>names=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/moshaf.png"),
        Container(
          width: double.infinity,
          height: 2,
          color: Theme.of(context).primaryColor,
          margin: EdgeInsets.only(bottom: 2,top: 2),
        ),Text("Verse Name",style: TextStyle(color: Colors.black,fontSize: 25)),
        Container(
          width: double.infinity,
          height: 2,
          color: Theme.of(context).primaryColor,
          margin: EdgeInsets.only(top: 2),
        ),
        Expanded(child: ListView.separated(itemBuilder:(buildcontext, index) {
          return textstyle(names[index], index);
        },
          itemCount: names.length,
          separatorBuilder: (context, index) {
            return Container(
                color: Theme.of(context).primaryColor,
                width: double.infinity,
                height: 1,
                margin: EdgeInsets.symmetric(horizontal: 24)
            );
          },
        )),
      ],
    );
  }
}
