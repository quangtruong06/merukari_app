import 'package:flutter/material.dart';
import 'package:merukari_app/Utils/Utils.dart';
import 'package:merukari_app/constants.dart';

class ItemDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: white,
              leading: InkWell(child: Icon(Icons.arrow_back_ios,color: Colors.black45,),
              onTap: (){
                Navigator.pop(context);
              },),
              shape: Border(bottom: BorderSide(width: 0.5,color: black12),),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Utils.customText(text: "PS4 ドラゴンクエストX いばらの巫女と滅びの神",size: normalTextSize,line: 1),
                  Utils.customText(text: "¥16,500",fontWeight: FontWeight.bold,size: normalTextSize),
                ],
              ),
              centerTitle: true,
            )
          ],
        ),
    );
  }

}