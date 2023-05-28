import 'package:flutter/material.dart';
import 'package:islami_app/islamiApp/SuraDetails/Sura_Details.dart';

class textstyle extends StatelessWidget {
  String title;
  int index;
  textstyle(this.title,this.index);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context,SuraDetails.routename,arguments: SuraDetailsArges(title,index));
      },
      child: Container(
        child:Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
            )),
      ),
    );
  }
}
