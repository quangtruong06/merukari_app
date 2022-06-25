import 'dart:math';

import 'package:flutter/material.dart';
import 'package:merukari_app/Mini_Screens/itemDetails.dart';

import '../constants.dart';
import 'Utils.dart';

class imageItem extends StatelessWidget{
   double imgSize ;
   int itemValue;
   String? img;
  imageItem({Key? key,required this.imgSize,required this.itemValue,this.img}) : super(key: key);
   var list = ["assets/images/ps4_img.png","assets/images/iine_img.jpg"];

  @override
  Widget build(BuildContext context) {
    return
    InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  ItemDetails()),
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Stack(children:[
          Image.asset(list[Random().nextInt(list.length)],width: imgSize.toDouble(),fit: BoxFit.cover,),
          Positioned(
            bottom: 0,
            left: 0,
            child: (
                Container(
                  alignment: Alignment.center,
                  color: Colors.black54,
                  height: 20,
                  width: 60,
                  child: Utils.customText(text:"¥${itemValue}",color: white,size: 13.0,fontWeight: FontWeight.bold),
                )),
          )
        ]),
      ),
    );
  }
}