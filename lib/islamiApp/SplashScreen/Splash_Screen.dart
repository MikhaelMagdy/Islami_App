import 'package:flutter/material.dart';
import 'package:islami_app/islamiApp/MyApp/Home_Screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routename="splash";
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5),() {
      Navigator.pushReplacementNamed(context, HomeScreen.routename);
    },);
    return Scaffold(
      body: Image.asset("assets/images/splash.png",fit: BoxFit.fill,height: double.infinity,
      width: double.infinity,),
    );
  }
}
