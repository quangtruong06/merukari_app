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
        backgroundColor: white,
        title: const Text("出品"),
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              color: black12,
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset("assets/images/event_bigImg.png")),
                  Padding(
                    padding: const EdgeInsets.only(top: padding8),
                    child: Utils.customText(
                        text: "出品へのショートカット",
                        size: 13.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: padding8),
                    child: Wrap(
                      spacing: 5,
                      direction: Axis.horizontal,
                      children: [
                        Container(
                          height: size.width/4-12,
                          width: size.width/4-12,
                          decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.camera_alt_outlined,
                                size: 30,
                                color: Colors.black87,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Utils.customText(text: "写真を撮る", size: 11.0),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: size.width/4-12,
                          width: size.width/4-12,
                          decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.broken_image_outlined,
                                size: 30,
                                color: Colors.black87,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4.0),
                                child: Utils.customText(text: "アルバム", size: 11.0),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: size.width/4-12,
                          width: size.width/4-12,
                          decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.qr_code_2,
                                size: 30,
                                color: Colors.black87,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Utils.customText(
                                  text: "バーコード",
                                  size: 11.0,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: size.width/4-12,
                          width: size.width/4-12,
                          decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.note_alt_outlined,
                                size: 30,
                                color: Colors.black87,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Utils.customText(text: "下書き一覧", size: 11.0),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Container(
            padding: EdgeInsets.only(left: defaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Utils.customText(
                        text: "売れやすい持ち物",
                        fontWeight: FontWeight.bold,
                        size: normalTextSize,
                        color: black),
                    Utils.customText(
                        text: "使わないモノを出品しましょう！",
                        fontWeight: FontWeight.normal,
                        size: smallSubtileSize,
                        color: Colors.black54),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Utils.customText(
                      text: "すべて見る ＞",
                      fontWeight: FontWeight.normal,
                      size: normalTextSize,
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
                      Border(top: BorderSide(width: 1, color: black12))),
              child: ListTile(
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      "assets/images/iine_img.jpg",
                      width: 60,
                    )),
                title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Utils.customText(
                          text: "PS4 ドラゴンクエストX いばらの巫女と滅びの神",
                          size: normalTextSize,
                          fontWeight: FontWeight.bold,
                          line: 1),
                      Utils.customText(
                          text: "¥18,000",
                          size: normalTextSize,
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
                        color: white,
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
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              color: black12,
              child: Column(
                children: [
                  Container(
                    color: white,
                    child: ListTile(
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
                  ),
                  Container(
                    margin: EdgeInsets.only(top: padding8),
                    color: white,
                    child: ListTile(
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
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(padding8),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/goodsSend/sendBG.png",
                    width: size.width,
                  ),
                  Utils.customText(text: "商品の梱包、実は意外とかんたんです", size: normalTextSize),
                  Utils.customText(text: "さっそく包み方を見てみましょう！", size: normalTextSize),
                ],
              ),
            ),
          ),
          sendMethod(size: size)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.red,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.camera_alt,color: white,)
          ,Utils.customText(text:"出品",color: white,size: 10.0,fontWeight: FontWeight.bold)
          ],
        )
      ),
    );
  }
}

class sendMethod extends StatelessWidget {
  const sendMethod({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    List sendmethod=[
      {"name":"Tシャツ・薄い衣類の梱包例",
      "subtile1":"きれいに折り畳み、防水のためにビニール袋に入れます。",
      "subtile2":"宅配ビニール袋や封筒、薄型箱に入れて発送します。",
        "img1":"assets/images/goodsSend/send_img1.png",
        "img2":"assets/images/goodsSend/send_img2.png",
        "img3":"assets/images/goodsSend/send_img3.png",
        "method1":"ネコポス¥210",
        "method2":"ゆうパケット¥230",
      },
      {"name":"割れ物・雑貨類の梱包例",
        "subtile1":"壊れないように緩衝材シート等で包みます。",
        "subtile2":"衝材シートや新聞紙などをつめた段ボール箱に入れて発送します。",
        "img1":"assets/images/goodsSend/send_img4.png",
        "img2":"assets/images/goodsSend/send_img5.png",
        "img3":"assets/images/goodsSend/send_img6.png",
        "method1":"宅急便コンパクト¥450",
        "method2":"ゆうパケットプラス¥455",
      },
      {"name":"かばん・靴類の梱包例",
        "subtile1":"傷がつかないように緩衝材シート等で包みます。",
        "subtile2":"厚手の紙袋や段ボール箱に入れ、ガムテープ等でしっかりとめて発送します。",
        "img1":"assets/images/goodsSend/send_img7.png",
        "img2":"assets/images/goodsSend/send_img8.png",
        "img3":"assets/images/goodsSend/send_img9.png",
        "method1":"宅急便¥750~",
        "method2":"ゆうパック¥770~",
      },
      {"name":"漫画セット・本の梱包例",
        "subtile1":"防水のためにビニール袋等で包みます。",
        "subtile2":"緩衝材をつめた段ボール箱に入れ、ガムテープ等でしっかりとめて発送します。",
        "img1":"assets/images/goodsSend/send_img10.png",
        "img2":"assets/images/goodsSend/send_img11.png",
        "img3":"assets/images/goodsSend/send_img12.png",
        "method1":"宅急便¥750~",
        "method2":"ゆうパック¥770~",
      },
      {"name":"パソコン・家電製品の梱包例",
        "subtile1":"家電製品は壊れないように緩衝材シート等しっかりとした梱包をします。",
        "subtile2":"元箱がある場合には元箱へしまって、配送用段ボール箱の中で動かないよう、しっかりと隙間を埋めて発送します。",
        "img1":"assets/images/goodsSend/send_img13.png",
        "img2":"assets/images/goodsSend/send_img14.png",
        "img3":"assets/images/goodsSend/send_img15.png",
        "method1":"宅急便¥750~",
        "method2":"ゆうパック¥770~",
      },
    ];
    return SliverPadding(
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
                  text: sendmethod[index]["name"],
                  color: Colors.green,
                  fontWeight: FontWeight.bold),
              SizedBox(
                height: defaultPadding,
              ),
              Wrap(
                direction: Axis.horizontal,
                spacing: 10,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                          sendmethod[index]["img1"],
                          width: size.width / 3.5)),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                          sendmethod[index]["img2"],
                          width: size.width / 3.5)),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                          sendmethod[index]["img3"],
                          width: size.width / 3.5)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: padding8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        const Icon(
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
                                    size: normalTextSize,
                                    color: white))),
                      ],
                    ),
                    Expanded(
                        child: Utils.customText(
                            text: sendmethod[index]["subtile1"]))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Row(
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
                                    size: normalTextSize,
                                    color: white))),
                      ],
                    ),
                    Expanded(
                        child: Utils.customText(
                            text: sendmethod[index]["subtile2"]))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: padding8),
                child: Container(
                  width: size.width,
                  padding: EdgeInsets.only(bottom: defaultPadding),
                  decoration: BoxDecoration(
                      color: black12,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Utils.customText(
                              text: "おすすめ配送方法",
                              color: white,
                              fontWeight: FontWeight.bold),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10))),
                          padding: EdgeInsets.all(padding8),
                        ),


                          Container(
                            margin: const EdgeInsets.only(left: defaultPadding*2,top: padding8),
                            child: RichText(
                              text:  TextSpan(children: [
                                TextSpan(
                                    text: "らくらくメルカリ便 ",
                                    style: TextStyle(color: Colors.black,fontSize: bigTittleSize)),
                                TextSpan(
                                    text: sendmethod[index]["method1"],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,fontSize: bigTittleSize))
                              ]),
                            ),
                          ),
                        Container(
                          margin: EdgeInsets.only(left: defaultPadding*2,top: padding8),
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "ゆうゆうメルカリ便 ",
                                  style: TextStyle(color: Colors.black,fontSize: 16)),
                              TextSpan(
                                  text: sendmethod[index]["method2"],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,fontSize: 16))
                            ]),
                          ),
                        )
                      ]),
                ),
              )
            ],
          ),
        );
      }, childCount: 5)),
    );
  }
}
