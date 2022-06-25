// これはマイページです。
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:merukari_app/Utils/greySpace.dart';
import 'package:merukari_app/Utils/text_next.dart';
import 'package:merukari_app/Utils/utils.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:merukari_app/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                      onPressed: () {},
                      shape: const CircleBorder(),
                      height: 50,
                      child: Image.asset(
                        "assets/images/profile_icon.png",
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Utils.customText(
                        text: "チュオン ",
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        size: 16.0),
                    Icon(Icons.navigate_next_rounded)
                  ]),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RatingBar(
                            itemSize: 15,
                            initialRating: 5,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            ratingWidget: RatingWidget(
                                full: const Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                                half: const Icon(
                                  Icons.star_half,
                                  color: Colors.orange,
                                ),
                                empty: const Icon(
                                  Icons.star_outline,
                                  color: Colors.orange,
                                )),
                            onRatingUpdate: (value) {}),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "20",
                          style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.underline,
                              color: Colors.blueAccent),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.check_circle_rounded,
                          size: 15,
                          color: Colors.green,
                        ),
                        Utils.customText(text: "本人確認済", size: 12.0)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  margin: EdgeInsets.only(top: 16.0),
                  decoration: const BoxDecoration(
                      border: Border(
                          left: BorderSide(
                    width: 4,
                    color: Colors.red,
                  ))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: "残高",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: black)),
                            TextSpan(
                                text: "(売上含む)",
                                style: TextStyle(fontSize: 13, color: black))
                          ])),
                          Utils.customText(
                              text: "¥54",
                              fontWeight: FontWeight.bold,
                              size: 20.0),
                          SizedBox(height: defaultPadding),
                          Utils.customText(text: "ポイント", size: 13.0),
                          SizedBox(
                            height: 4,
                          ),
                          Row(children: [
                            Image.asset(
                              "assets/logo/mercari_icon.png",
                              height: 20,
                              fit: BoxFit.fitHeight,
                            ),
                            Utils.customText(text: "P0", size: 13.0),
                            SizedBox(
                              width: defaultPadding,
                            ),
                            Image.asset(
                              "assets/logo/d_point.png",
                              height: 18,
                              fit: BoxFit.fitHeight,
                            ),
                            Utils.customText(text: "P1000", size: 13.0)
                          ])
                        ],
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: white,
                          size: 19,
                        ),
                        label: Utils.customText(
                            text: "増やす",
                            size: 12.0,
                            color: white,
                            fontWeight: FontWeight.bold),
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(size.width / 3.3, 30),
                            primary: Color(0xFFd91e18)),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 16,
                  color: Colors.black54,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: const BoxDecoration(
                      border: Border(
                          left: BorderSide(
                    width: 4,
                    color: Colors.blue,
                  ))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: size.width / 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Utils.customText(
                                text: "メルペイスマート払い",
                                fontWeight: FontWeight.bold,
                                size: 13.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Utils.customText(
                                    text: "¥128,372",
                                    fontWeight: FontWeight.bold,
                                    size: 20.0),
                                Row(
                                  children: [
                                    Utils.customText(
                                        text: "/",
                                        fontWeight: FontWeight.bold,
                                        size: 12.0),
                                    Utils.customText(
                                        text: "¥150,000",
                                        size: 12.0,
                                        color: Colors.blue),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: LinearProgressIndicator(
                                minHeight: 8,
                                color: Colors.blue,
                                backgroundColor: Color(0xFFbbdefb),
                                value: (128372 / 150000),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Utils.customText(
                                  text: "定額払いのプランを確認",
                                  color: Colors.blue,
                                  size: 13.0),
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Utils.customText(
                              text: "前月　¥3,000",
                              color: Colors.black54,
                              size: 13.0),
                          OutlinedButton(
                            onPressed: () {},
                            child: Utils.customText(
                                text: "前月分を支払う",
                                size: 13.0,
                                fontWeight: FontWeight.bold),
                            style: OutlinedButton.styleFrom(
                              minimumSize: Size(size.width / 3.3, 30),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12.0),
                  color: white,
                  padding: EdgeInsets.only(left: defaultPadding,top: 16.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(width: 1, color: black12))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Utils.customText(
                            text: "毎月の支払い", size: 14.0, color: Colors.black87),
                        const Icon(
                          Icons.navigate_next,
                          color: Colors.black54,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          greySpace(paddingTop: 0),
          TextNextList(list: ["いいね！した商品閲覧履歴","保存した検索条件","出品した商品","購入した商品","下書き一覧","持ち物一覧"],),
          greySpace(paddingTop: 0),
          TextNextList(list: ["クーポン","紹介して500ポイントGET"],)

        ],
      )),
    );
  }
}

class TextNextList extends StatelessWidget {
  List? list;
   TextNextList({
    this.list
  });
  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate((context,index){
      return TextNext(text: list?[index],);
    },childCount: list?.length));
  }
}
