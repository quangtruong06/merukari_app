import 'package:flutter/material.dart';

import 'Utils.dart';

class imageItem extends StatelessWidget{
   double imgSize ;
   int itemValue;
  imageItem({Key? key,required this.imgSize,required this.itemValue}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return
    ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Stack(children:[
        Image.asset("assets/images/iine_img1.jpg",width: imgSize.toDouble(),fit: BoxFit.cover,),
        Positioned(
          bottom: 0,
          left: 0,
          child: (
              Container(
                alignment: Alignment.center,
                color: Colors.black54,
                height: 20,
                width: 60,
                child: Utils.customText(text:"¥${itemValue}",color: Colors.white,size: 13.0,fontWeight: FontWeight.bold),
              )),
        )
      ]),
    );
  }
}