import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:merukari_app/Utils/utils.dart';


// これはお知らせのページ
class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
            extendBody: true,
            body: Stack(
              children: [
                Column(
                  children: [
                    TabBar(
                        tabs: [
                          Tab(
                            text: 'お知らせ',
                          ),
                          Tab(text: 'ニュース')
                        ],
                        labelColor: Colors.red,
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        unselectedLabelColor: Colors.black38,
                        indicatorWeight: 3.0,
                        indicatorColor: Colors.red), // Create Tabbar
                    Expanded(
                      child: TabBarView(children: <Widget>[
                        NotificationsList(),
                        NewsList()
                      ]), //Set Tabbar View
                    ),
                  ],
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: RawMaterialButton(
                        onPressed: () {},
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.blue,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16, right: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Utils.customText(
                                    text: "2件のおすすめキャンペーンを見る",
                                    color: Colors.blue,
                                    size: 13.0,
                                    fontWeight: FontWeight.bold),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  size: 15,
                                  color: Colors.blue,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ) //Make BottomCenter Button すすめ
              ],
            )),
      ),
    );
  }
}

//ニュースリスト Build NewPage in Notifi
class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0, bottom: 8.0, right: 0.0),
      child: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1, color: Colors.black12))),
              height: 90,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Utils.customText(
                            text: "【6月2日追記】【重要】メルペイの一部お問い合わせ窓口について", line: 2),
                        Utils.customText(
                            text: "2022年6月2日　19:13", color: Colors.black54),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

//知らせリスト Build Notifi List
class NotificationsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0, bottom: 8.0, right: 0.0),
      child: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1, color: Colors.black12))),
              height: 90,
              child: Row(
                children: [
                  Image.network(
                      "https://avatars.githubusercontent.com/u/8133808?s=200&v=4",
                      width: 50,
                      fit: BoxFit.cover),
                  Flexible(
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Utils.customText(
                              text: "事務局から個別メッセージ「Facebookログイン通知", line: 2),
                          Utils.customText(text: "8秒前", color: Colors.black54),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
