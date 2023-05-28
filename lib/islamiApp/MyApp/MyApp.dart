import 'package:flutter/material.dart';
import 'package:islami_app/islamiApp/MyApp/Home_Screen.dart';
import 'package:islami_app/islamiApp/SplashScreen/Splash_Screen.dart';
import 'package:islami_app/islamiApp/SuraDetails/Sura_Details.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.routename:(_)=>HomeScreen(),
        SplashScreen.routename:(_)=>SplashScreen(),
        SuraDetails.routename:(_)=>SuraDetails(),
      },
      initialRoute: SplashScreen.routename,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        progressIndicatorTheme: ProgressIndicatorThemeData(color:  Color(0xffB7935F) ),
        cardColor: Colors.white70,
        primaryColor: Color(0xffB7935F),
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(backgroundColor: Colors.transparent,elevation: 0,centerTitle: true,
            titleTextStyle: TextStyle(
          color: Colors.black,fontSize: 30),
          iconTheme: IconThemeData(color: Colors.black),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.black,
        ),
      ),
    );
  }
}

