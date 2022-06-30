import 'package:flutter/material.dart';

import '../Utils/Utils.dart';
import '../constants.dart';

class Yarukoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
      backgroundColor: white,
      leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black26,
          )),
      title:
          Utils.customText(text: "やることリスト", size: bigTittleSize, color: black,fontWeight: FontWeight.bold),
      centerTitle: true,
    ),
    body: Container(
      color: black12,
      child: Container(
        margin: EdgeInsets.only(top: defaultPadding),
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.all(4.0),
                decoration: const BoxDecoration(
                  color: white,
                    border: Border(
                        bottom: BorderSide(width: 1, color: black12))),
                child: Row(
                  children: [
                    Image.asset(
                        "assets/images/mercari_icon.png",
                        width: 50,
                        fit: BoxFit.cover),
                    Flexible(
                      child: Container(
                        margin: const EdgeInsets.all(padding8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Utils.customText(
                                text: "事務局から個別メッセージ「Facebookログイン通知", line: 2,size: normalTextSize),
                            Padding(
                              padding: const EdgeInsets.only(top: padding8),
                              child: Row(
                                children: [
                                  Icon(Icons.access_time,color: Colors.black54,size: 13),
                                  Utils.customText(text: "8秒前", color: Colors.black54,size: smallSubtileSize),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },),
      ),
    )
    );
  }
}
