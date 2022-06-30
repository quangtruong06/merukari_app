import 'package:flutter/material.dart';
import 'package:merukari_app/Screens/itemDetails.dart';
import 'package:merukari_app/constants.dart';

import '../Utils/Utils.dart';

class AllComments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        leading:GestureDetector(
        onTap: (){
          Navigator.pop(context);
        }
        ,child: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.black26,)),
      title: Utils.customText(text: "コメント",fontWeight: FontWeight.bold),
      centerTitle: true,
      elevation: 0.5,),
      body: Stack(children: [
        Container(
          color: black12,
          child: Column(
            children: [
              Container(
                color: white,
                padding: EdgeInsets.all(8.0),
                child: RichText(text: TextSpan(
                  children: [
                    TextSpan(text: "相手の事を考え丁寧なコメントを心がけましょう。不敬な言葉づかいなどは",style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: normalTextSize,
                      color: black
                    )),
                    TextSpan(text: "利用制限や退会処分",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: normalTextSize,
                        color: black
                    )),
                    TextSpan(text: "となることがあります。",style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: normalTextSize,
                        color: black
                    ))
                  ]
                )
                ),

              ),
              Expanded(
                child: SingleChildScrollView(
                  child: CommentWidget(
                    isAllScreen: true,
                    size: size,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: Column(
            children: [
              Container(
                height: 30,
              width: size.width,
              child: ListView.builder(itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.only(left: defaultPadding),
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: Utils.customText(text: "お下げをお願いする",color: black,size: normalTextSize,fontWeight: FontWeight.bold)),
                );
              },itemCount: 5,scrollDirection: Axis.horizontal,),)
            ],
          ),
        )
      ]),
    );
  }
}
