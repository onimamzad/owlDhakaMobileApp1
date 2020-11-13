import 'package:flutter/material.dart';
import 'package:restaurent_app_1/screens/loginPage.dart';
import 'screens/homepage.dart';
import 'screens/billPage.dart';
import 'package:restaurent_app_1/screens/registrationPage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData.dark(
        //primarySwatch: Colors.blue,
        //visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        'billPage': (context) => BillPage(),
        BillPage().loginRoute:(context)=>LoginPage(),
        HomePage().homeRoute:(context)=>HomePage(),
        'registerPage':(context)=>RegisterPage(),
      },
      home: LoginPage(),
    );
  }
}




