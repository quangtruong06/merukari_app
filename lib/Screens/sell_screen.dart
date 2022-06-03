//これは出品のペジ
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:merukari_app/Utils/Utils.dart';

class SellPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("出品"),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),
        centerTitle: true,
      ),
    );
  }
}