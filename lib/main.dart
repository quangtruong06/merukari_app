import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:merukari_app/Screens/main_screen.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "メルカリ",
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}