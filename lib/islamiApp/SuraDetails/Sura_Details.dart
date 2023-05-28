import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuraDetails extends StatefulWidget {
  static const String routename="Sura";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}
class _SuraDetailsState extends State<SuraDetails> {
  List<String> TextDetails=[];
  @override
  Widget build(BuildContext context) {
    var Args= ModalRoute.of(context)?.settings.arguments  as SuraDetailsArges;
    if(TextDetails.isEmpty)
    Readfile(Args.index);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.fill,)),
      child: Scaffold(
          appBar: AppBar(
              title: Text(Args.title)),
        body: Column(children: [
              Expanded(child: Card(
                margin: EdgeInsets.all(20),
                color:Theme.of(context).cardColor ,
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                child: TextDetails.isEmpty?Center(child: CircularProgressIndicator()):
                  ListView.separated(separatorBuilder: (buildcontext,index){
                    return Container(width: double.infinity,height: 1,
                      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),color: Theme.of(context).primaryColor,);
                  },
                    itemBuilder: (buildcontext,index){
                    return Container(
                      alignment: Alignment.center,
                        child: Text(TextDetails[index],textAlign:TextAlign.center,));
                  },itemCount: TextDetails.length,),
              )),
            ]),
          ),
    );
  }

  void Readfile(int indexfile)async{
   var text=await rootBundle.loadString("assets/files/${indexfile+1}.txt");
   setState(() {
     TextDetails = text.split("\n");
   });

  }
}
class SuraDetailsArges{
  String title;
  int index;
  SuraDetailsArges(this.title,this.index);
}