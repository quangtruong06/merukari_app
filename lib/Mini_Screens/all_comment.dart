import 'package:flutter/material.dart';
import 'package:merukari_app/Screens/itemDetails.dart';

class AllComments extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: CommentWideget(isScreen: true)),
    );
  }

}