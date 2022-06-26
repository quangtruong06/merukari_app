//これはメルペイのペジ
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:merukari_app/Utils/Utils.dart';
import 'package:merukari_app/Utils/greySpace.dart';
import 'package:merukari_app/Utils/text_next.dart';
import 'package:merukari_app/app_data.dart';
import 'package:merukari_app/constants.dart';

class BarcodePage extends StatelessWidget {
  const BarcodePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: black12,
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: barcodeContent(size: size,),
            ),
            SliverPadding(
              padding: EdgeInsets.all(defaultPadding),
              sliver: SliverToBoxAdapter(
                child: Container(
                  child: Wrap(
                    spacing: 10,
                    direction: Axis.horizontal,
                    children: [
                      Container(
                        height: size.height/10,
                        width: size.width / 3.5,
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/map_barcode.png",
                              width: size.height/10,
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: Utils.customText(text: "使えるお店", size: smallSubtileSize),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: size.height/10,
                        width: size.width / 3.5,
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/card_barcode.png",
                              width: 80,
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                                padding:EdgeInsets.only(top: 4)
                                ,child: Utils.customText(text: "バーチャルカード", size: smallSubtileSize))
                          ],
                        ),
                      ),
                      Container(
                        height: size.height/10,
                        width: size.width / 3.5,
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/transfer_barcode.png",
                              width: 80,
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: Utils.customText(text: "おくる・もらう", size: smallSubtileSize),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.only(right: defaultPadding),
                height: size.height / 5.5,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      width: size.width / 1.5,
                      margin: EdgeInsets.only(left: 10),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/images/ads_barcode.png",
                            fit: BoxFit.fill,
                          )),
                    );
                  },
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              sliver: SliverToBoxAdapter(
                  child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Utils.customText(
                        text: "メルペイクーポン", color: Colors.black54, size: normalTextSize),
                    TextButton(
                        onPressed: () {},
                        child: Utils.customText(
                            text: "すべて見る＞", color: Colors.blue, size: normalTextSize)),
                  ],
                ),
              )),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.only(right: defaultPadding),
                height: size.height / 7,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      width: size.width / 3.1,
                      margin: EdgeInsets.only(left: 10),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/images/daiso_img.png",
                            fit: BoxFit.fill,
                          )),
                    );
                  },
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.all(defaultPadding),
              sliver: SliverToBoxAdapter(
                child: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Utils.customText(
                            text: "使った履歴", color: Colors.black54, size: normalTextSize),
                        Padding(
                          padding: const EdgeInsets.only(top: padding8),
                          child: Wrap(
                            spacing: 10,
                            direction: Axis.horizontal,
                            children: [
                              Container(
                                height: size.height/10,
                                width: size.width / 3.5,
                                decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.currency_yen_rounded,
                                      size: 30,
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(top: 4.0),
                                      child: Utils.customText(text: "残高", size: smallSubtileSize),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: size.height/10,
                                width: size.width / 3.5,
                                decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/logo/alphaP.png",
                                      color: Colors.black,
                                      width: 30,
                                      fit: BoxFit.cover,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4.0),
                                      child: Utils.customText(text: "ポイント", size: 10.0),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: size.height/10,
                                width: size.width / 3.5,
                                decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.calendar_month,
                                      size: 30,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4.0),
                                      child: Utils.customText(text: "スマート払い", size: 10.0),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.only(left: defaultPadding),
                child: Utils.customText(
                    text: "使い方", color: Colors.black54, size: normalTextSize),
              ),
            ),
            payMethod(size: size),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.only(left: defaultPadding,bottom: padding8,top: defaultPadding),
                child: Utils.customText(
                    text: "設定", color: Colors.black54, size: normalTextSize),
              ),
            ),
            setteiList(),
            greySpace(paddingTop: 20)
          ],
        ));
  }
}

class setteiList extends StatelessWidget {
  const setteiList({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List settei =[
      "メルペイ設定",
      "振り込み申請",
      "ガイド",
      "事業者の方へ：メルペイ導入の申し込み",
    ];
    return SliverList(delegate: SliverChildBuilderDelegate((context,index){
      return TextNext(text: settei[index],);
    },childCount: 4));
  }
}
class payMethod extends StatelessWidget {
  const payMethod({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> paymethodData=[
      {
        "subtile":"購入金額を\n翌月払う",
        "name" : "メルペイスマート払い",
        "color":Colors.lightBlueAccent,
        "icon": Icons.calendar_month_rounded,
      },
      {
        "subtile":"購入金額を\n月々に分ける",
        "name" : "定額払い",
        "color":Color(0xFF0b7fab),
        "icon": Icons.bar_chart_rounded,
      },
      {
        "subtile":"メルペイ残高に\nチャージをする",
        "name" : "銀行口座登録",
        "color":Color(0xFF1ba39c),
        "icon": Icons.house_rounded,
      },
      {
        "subtile":"安心安全・より便利に\nメルペイを使う",
        "name" : "本人確認",
        "color":Colors.black54,
        "icon": Icons.person,
      },
      {
        "subtile":"スマホをかざして\n決済する方法",
        "name" : "iD決済",
        "color":Color(0xFF84A013),
        "icon": Icons.credit_card,
      },
      {
        "subtile":"コードを見せて\n決済する方法",
        "name" : "コード決済",
        "color":Color(0xFFDB5A6B),
        "icon": Icons.qr_code_rounded,
      },
      {
        "subtile":"ネットショップでも\nメルペイが使える",
        "name" : "ネット決済",
        "color":Colors.orange,
        "icon": Icons.shopping_cart,
      },
      {
        "subtile":"メルペイ残高で\n寄付する",
        "name" : "メルカリ寄付",
        "color":Color(0xFFC93756),
        "icon": Icons.android_outlined,
      },
    ];

    return SliverPadding(
      padding: EdgeInsets.all(defaultPadding),
      sliver: SliverGrid(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                  color: white, borderRadius: BorderRadius.circular(5)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.all(defaultPadding),
                      child:
                          Utils.customText(text: paymethodData[index]["subtile"], size: normalTextSize)),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.symmetric(horizontal: padding8),
                    decoration: BoxDecoration(
                        color: paymethodData[index]["color"],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Utils.customText(
                            text: paymethodData[index]["name"],
                            size: 11.0,
                            color: white,
                            fontWeight: FontWeight.bold),
                        Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Icon(
                            paymethodData[index]["icon"],
                            color: paymethodData[index]["color"],
                            size: 20,
                          ),
                        )
                      ],
                    ),
                  ))
                ],
              ),
            );
          }, childCount: 8),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 9,
              mainAxisSpacing: 10,
              childAspectRatio:
                  1.7)),
    );
  }
}
class barcodeContent extends StatelessWidget {
  const barcodeContent({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: size.height/10, bottom: padding8),
      color: Colors.red,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(defaultPadding),
            height: size.height/3.8,
            width: size.width * 0.9,
            decoration: BoxDecoration(
                color: white, borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/logo/merupay_logo.png",
                  width: 55,
                ),
                Utils.customText(
                    text: "街の店で決済", size: normalTextSize, fontWeight: FontWeight.bold),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Image.asset(
                    "assets/images/barcode.png",
                    height: 40,
                    width: size.width/1.8,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: defaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 4),
                            decoration: BoxDecoration(
                              border: Border(
                                  left: BorderSide(
                                width: 3,
                                color: Colors.red,
                              )),
                            ),
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "残高（売上金含む）",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.black)),
                                WidgetSpan(
                                    child: Icon(
                                  Icons.visibility_outlined,
                                  size: 14,
                                ))
                              ]),
                            ),
                          ),
                          Utils.customText(
                              text: "¥${yourMoney}",
                              fontWeight: FontWeight.bold,
                              size: 13.0),
                          Utils.customText(
                              text: "P${yourPoint}",
                              fontWeight: FontWeight.bold,
                              size: 13.0)
                        ],
                      ),
                      Wrap(
                        spacing: 7,
                        direction: Axis.horizontal,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: black12, width: 1),
                                borderRadius: BorderRadius.circular(5)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/logo/qrcode_logo.png",
                                  width: 30,
                                ),
                                Utils.customText(text: "コード決済", size: 10.0)
                              ],
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: black12, width: 1),
                                borderRadius: BorderRadius.circular(5)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/logo/id_logo.png", width: 60),
                                Utils.customText(text: "ID決済", size: 10.0)
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: defaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_circle,
                      color: white,
                    ),
                    label: Utils.customText(
                        text: "残高にチャージ",
                        color: white,
                        size: 10.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                    height: 25,
                    child: VerticalDivider(
                      color: Colors.black38,
                      thickness: 1.5,
                    )),
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.sync_outlined,
                      color: Colors.lightBlue,
                    ),
                    label: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Utils.customText(
                              text: "メルペイスマート払い",
                              color: white,
                              size: 10.0,
                              fontWeight: FontWeight.bold),
                          Utils.customText(
                              text: "使える枠 ￥10,000",
                              color: white,
                              size: 10.0)
                        ])),
              ],
            ),
          )
        ],
      ),
    );
  }
}
