import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:merukari_app/Utils/utils.dart';

import '../constants.dart';


// これはお知らせのページ
class NotificationsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                    const TabBar(
                        tabs: [
                          Tab(
                            text: 'お知らせ',
                          ),
                          Tab(text: 'ニュース')
                        ],
                        labelColor: setAppColor,
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        unselectedLabelColor: Colors.black38,
                        indicatorWeight: 3.0,
                        indicatorColor: setAppColor), // Create Tabbar
                    Expanded(
                      child: TabBarView(children: <Widget>[
                        NotificationsList(size: size,),
                        NewsList(size: size,)
                      ]), //Set Tabbar View
                    ),
                  ],
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(defaultPadding),
                      child: RawMaterialButton(
                        onPressed: () {},
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: white,
                            border: Border.all(
                              color: Colors.blue,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Utils.customText(
                                    text: "2件のおすすめキャンペーンを見る",
                                    color: Colors.blue,
                                    size: normalTextSize,
                                    fontWeight: FontWeight.bold),
                                const Icon(
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
class NewsList extends StatelessWidget {
  const NewsList({Key? key,required this.size}) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: defaultPadding),
      child: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1, color: black12))),
              height: size.height/9,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(padding8),
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
class NotificationsList extends StatelessWidget {
  const NotificationsList({Key? key,required this.size}) : super(key: key);
  final Size size ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: defaultPadding),
      child: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1, color: black12))),
              height: size.height/9,
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
