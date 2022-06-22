//これは出品のペジ
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:merukari_app/Utils/Utils.dart';
import 'package:merukari_app/Utils/greySpace.dart';
import 'package:merukari_app/constants.dart';

class SellPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("出品"),
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              color: Colors.black12,
              padding: EdgeInsets.all(defaultPadding * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset("assets/images/event_bigImg.png")),
                  SizedBox(
                    height: defaultPadding * 2,
                  ),
                  Utils.customText(
                      text: "出品へのショートカット",
                      size: 13.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                  SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    spacing: 13,
                    direction: Axis.horizontal,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.camera_alt_outlined,
                              size: 30,
                              color: Colors.black87,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Utils.customText(text: "写真を撮る", size: 11.0)
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.broken_image_outlined,
                              size: 30,
                              color: Colors.black87,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Utils.customText(text: "アルバム", size: 11.0)
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.qr_code_2,
                              size: 30,
                              color: Colors.black87,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Utils.customText(
                              text: "バーコード",
                              size: 11.0,
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.note_alt_outlined,
                              size: 30,
                              color: Colors.black87,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Utils.customText(text: "下書き一覧", size: 11.0)
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Container(
            padding: EdgeInsets.only(left: defaultPadding * 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Utils.customText(
                        text: "売れやすい持ち物",
                        fontWeight: FontWeight.bold,
                        size: 13.0,
                        color: Colors.black),
                    Utils.customText(
                        text: "使わないモノを出品しましょう！",
                        fontWeight: FontWeight.normal,
                        size: 11.0,
                        color: Colors.black54),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Utils.customText(
                      text: "すべて見る ＞",
                      fontWeight: FontWeight.normal,
                      size: 13.0,
                      color: Colors.blue),
                )
              ],
            ),
          )),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              decoration: BoxDecoration(
                  border:
                      Border(top: BorderSide(width: 1, color: Colors.black12))),
              child: ListTile(
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      "assets/images/iine_img1.jpg",
                      width: 60,
                    )),
                title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Utils.customText(
                          text: "PS4 ドラゴンクエストX いばらの巫女と滅びの神",
                          size: 13.0,
                          fontWeight: FontWeight.bold,
                          line: 1),
                      Utils.customText(
                          text: "¥18,000",
                          size: 13.0,
                          fontWeight: FontWeight.bold),
                    ]),
                subtitle: Utils.customText(text: "２６人が探しています", size: 10.0),
                trailing: SizedBox(
                  height: 30,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                    onPressed: () {},
                    child: Utils.customText(
                        text: "出品する",
                        color: Colors.white,
                        size: 10.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                dense: true,
              ),
            );
          }, childCount: 3)),
          SliverToBoxAdapter(
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 15.0,
                    child: const DecoratedBox(
                      decoration: const BoxDecoration(color: Colors.black12),
                    ),
                  ),
                  ListTile(
                    leading: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          "assets/images/sell1.png",
                          width: 60,
                        )),
                    title: Utils.customText(
                        text: "売れるかチェックする",
                        size: 13.0,
                        fontWeight: FontWeight.bold,
                        line: 1),
                    subtitle: Utils.customText(
                        text: "カメラを使って商品単価の相場をチェック",
                        size: 10.0,
                        color: Colors.black54),
                    trailing: Icon(Icons.navigate_next_sharp),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 8.0,
                    child: const DecoratedBox(
                      decoration: const BoxDecoration(color: Colors.black12),
                    ),
                  ),
                  ListTile(
                    leading: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          "assets/images/sell2.png",
                          width: 60,
                        )),
                    title: Utils.customText(
                        text: "メルカリストアを見る",
                        size: 13.0,
                        fontWeight: FontWeight.bold,
                        line: 1),
                    subtitle: Utils.customText(
                        text: "メルカリ公式の便利な梱包資材を購入できます",
                        size: 10.0,
                        color: Colors.black54),
                    trailing: Icon(Icons.navigate_next_sharp),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 15.0,
                    child: const DecoratedBox(
                      decoration: const BoxDecoration(color: Colors.black12),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/goodsSend/sendBG.png",
                    width: size.width,
                  ),
                  Utils.customText(text: "商品の梱包、実は意外とかんたんです", size: 13.0),
                  Utils.customText(text: "さっそく包み方を見てみましょう！", size: 13.0),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(defaultPadding),
            sliver: SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                padding: EdgeInsets.symmetric(vertical: defaultPadding),
                decoration: BoxDecoration(
                    border:
                        Border(top: BorderSide(width: 3, color: Colors.green))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Utils.customText(
                        text: "Tシャツ・薄い衣類の梱包例",
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Wrap(
                      direction: Axis.horizontal,
                      spacing: 20,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                                "assets/images/goodsSend/send_img1.png",
                                width: size.width / 3.5)),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                                "assets/images/goodsSend/send_img2.png",
                                width: size.width / 3.5)),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                                "assets/images/goodsSend/send_img3.png",
                                width: size.width / 3.5)),
                      ],
                    ),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Icon(
                              Icons.brightness_1,
                              color: Colors.green,
                              size: 25,
                            ),
                            Positioned.fill(
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Utils.customText(
                                        text: "1",
                                        fontWeight: FontWeight.bold,
                                        size: 12.0,
                                        color: Colors.white))),
                          ],
                        ),
                        Expanded(
                            child: Utils.customText(
                                text: "きれいに折り畳み、防水のためにビニール袋に入れます。"))
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Icon(
                              Icons.brightness_1,
                              color: Colors.green,
                              size: 25,
                            ),
                            Positioned.fill(
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Utils.customText(
                                        text: "2",
                                        fontWeight: FontWeight.bold,
                                        size: 12.0,
                                        color: Colors.white))),
                          ],
                        ),
                        Expanded(
                            child: Utils.customText(
                                text: "宅配ビニール袋や封筒、薄型箱に入れて発送します。"))
                      ],
                    ),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Container(
                      width: size.width,
                      padding: EdgeInsets.only(bottom: defaultPadding),
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Utils.customText(
                                  text: "おすすめ配送方法",
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(10))),
                              padding: EdgeInsets.all(6),
                            ),
                            SizedBox(height: defaultPadding,),
                            Container(
                              margin: const EdgeInsets.only(left: defaultPadding*2),
                              child: RichText(
                                text: const TextSpan(children: [
                                  TextSpan(
                                      text: "らくらくメルカリ便 ",
                                      style: TextStyle(color: Colors.black,fontSize: 16)),
                                  TextSpan(
                                      text: "ネコポス¥210",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,fontSize: 16))
                                ]),
                              ),
                            ),
                            const SizedBox(height: defaultPadding,),
                            Container(
                              margin: EdgeInsets.only(left: defaultPadding*2),
                              child: RichText(
                                text: const TextSpan(children: [
                                  TextSpan(
                                      text: "ゆうゆうメルカリ便 ",
                                      style: TextStyle(color: Colors.black,fontSize: 16)),
                                  TextSpan(
                                      text: "ゆうパケット¥230",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,fontSize: 16))
                                ]),
                              ),
                            )
                          ]),
                    )
                  ],
                ),
              );
            }, childCount: 5)),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.red,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.camera_alt,color: Colors.white,)
          ,Utils.customText(text:"出品",color: Colors.white,size: 10.0,fontWeight: FontWeight.bold)
          ],
        )
      ),
    );
  }
}
