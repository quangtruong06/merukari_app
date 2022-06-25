import 'package:flutter/material.dart';
import 'package:merukari_app/Utils/Utils.dart';
import 'package:merukari_app/Utils/imageItem.dart';
import 'package:merukari_app/constants.dart';

class Pikkuappu extends StatelessWidget {
  const Pikkuappu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double bigImg = 160.0;
    return Scrollbar(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter  (
            child: Container(
              color: Colors.black12,
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: size.width,
                    color: Colors.white,
                    padding: const EdgeInsets.all(defaultPadding),
                    child: Utils.customText(
                        text: "おすすめのピックアップ", fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    width: size.width,
                    height: size.height / 2.9,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomLeft,
                      stops: [
                        0.6,
                        0.9,
                      ],
                      colors: [Color(0xFFffd0db), Color(0xFF66D7EB)],
                    )),
                    child: Wrap(children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Utils.customText(
                                    text: "夏素材のバッグで季節を先取りしよう",
                                    fontWeight: FontWeight.bold),
                                Icon(Icons.navigate_next)
                              ]),
                          SizedBox(
                            height: 10,
                          ),
                          Utils.customText(
                              text:
                                  "夏になると欲しくなるかごバッグやメッシュ、麻、キャンバス、クリアバッグなど涼しげな素材のバッグを集めました。",
                              size: 10.0),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                padding:EdgeInsets.only(right: defaultPadding),
                                child: imageItem(
                                    imgSize:
                                        size.width / 2 - defaultPadding * 3.5,
                                    itemValue: 2500,img: "assets/images/ps4_img.png",),
                              ),
                              Expanded(
                                child: Wrap(
                                  direction: Axis.horizontal,
                                  spacing: 5,
                                  runSpacing: 5,
                                  children: [
                                    Container(
                                        child: imageItem(
                                            imgSize: size.width / 4 -
                                                defaultPadding * 2,
                                            itemValue: 2500,img: "assets/images/ps4_img.png")),
                                    Container(
                                        child: imageItem(
                                            imgSize: size.width / 4 -
                                                defaultPadding * 2,
                                            itemValue: 2500,img: "assets/images/ps4_img.png")),
                                    Container(
                                        child: imageItem(
                                            imgSize: size.width / 4 -
                                                defaultPadding * 2,
                                            itemValue: 2500,img: "assets/images/ps4_img.png")),
                                    Container(
                                        child: imageItem(
                                            imgSize: size.width / 4 -
                                                defaultPadding * 2,
                                            itemValue: 2500,img: "assets/images/ps4_img.png")),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(defaultPadding),
              child: Utils.customText(
                  text: "おすすめのピックアップ一覧", fontWeight: FontWeight.bold),
            ),
          ),
          pikkuappuList(size: size),
        ],
      ),
    );
  }
}

class pikkuappuList extends StatelessWidget {
  const pikkuappuList({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
      return Container(
        padding: EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
            border:
                Border(top: BorderSide(width: 1, color: Colors.black12))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Utils.customText(
                text: "ナイトルーティンで素敵な夜を。人気の美顔器5選",
                fontWeight: FontWeight.bold,
                size: 13.0),
            SizedBox(
              height: 5,
            ),
            Wrap(
              direction: Axis.horizontal,
              spacing: 4,
              children: [
                imageItem(
                    imgSize: size.width / 4 - defaultPadding,
                    itemValue: 2500,img: "assets/images/ps4_img.png"),
                imageItem(
                    imgSize: size.width / 4 - defaultPadding,
                    itemValue: 2500,img: "assets/images/ps4_img.png"),
                imageItem(
                    imgSize: size.width / 4 - defaultPadding,
                    itemValue: 2500,img: "assets/images/ps4_img.png"),
                imageItem(
                    imgSize: size.width / 4 - defaultPadding,
                    itemValue: 2500,img: "assets/images/ps4_img.png"),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Utils.customText(
                text:
                    "毛穴やたるみなどのスキンケアや、ほうれい線、リフトアップをセルフケアしたい！　美容クリニックで使われているプロ仕様のアイテムもメルカリで販売中です。（集計期間：2021年5月〜2022年4月）",
                size: 10.5),
            Align(
              alignment: Alignment.bottomRight,
              child: Utils.customText(
                  text: "すべて見る ＞", size: 11.0, color: Colors.blue),
            ),
          ],
        ),
      );
    }, childCount: 8));
  }
}
