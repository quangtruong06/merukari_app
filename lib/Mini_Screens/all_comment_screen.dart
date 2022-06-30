import 'package:flutter/material.dart';
import 'package:merukari_app/Screens/itemDetails.dart';
import 'package:merukari_app/constants.dart';

import '../Utils/Utils.dart';

class AllComments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
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
          color: Colors.black12,
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
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              children: [
                Container(
                  width: size.width,
                  height: 30,
                child: ListView.builder(itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.only(left: 8.0),
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(child: Utils.customText(text: "お下げをお願いする",color: black,size: normalTextSize,fontWeight: FontWeight.bold)),
                  );
                },itemCount: 5,scrollDirection: Axis.horizontal,),),
                Container(
                  margin: EdgeInsets.only(top: padding8),
                  height: 50,
                  width: size.width,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          padding: EdgeInsets.all(padding8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26,width: 1)
                          ),
                          child: Container(
                            color: Colors.black12,
                            child: TextField(
                              textAlignVertical: TextAlignVertical.center,
                              maxLines: 1,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 8.0),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black12, width: 1.0),
                                      borderRadius: BorderRadius.circular(5)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black12, width: 1.0),
                                      borderRadius: BorderRadius.circular(5)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(1)),
                                filled: true,
                                fillColor: Colors.black12,
                                hintText: "コメントする",
                                hintStyle: TextStyle(
                                  color: Colors.black54,
                                  fontSize: normalTextSize
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.black38,
                            child: Center(
                              child: Utils.customText(text: "送信",color: white,fontWeight: FontWeight.bold,size: normalTextSize),
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
