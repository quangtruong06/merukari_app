import 'package:flutter/material.dart';
import 'package:merukari_app/Utils/Utils.dart';
import 'package:merukari_app/Utils/imageItem.dart';
import 'package:merukari_app/constants.dart';

class Pikkuappu extends StatelessWidget {
  const Pikkuappu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scrollbar(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter  (
            child: Container(
              color: black12,
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: size.width,
                    color: white,
                    padding: const EdgeInsets.all(defaultPadding),
                    child: Utils.customText(
                        text: "おすすめのピックアップ", fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    width: size.width,
                    height: size.height / 3.0,
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
                                const Icon(Icons.navigate_next)
                              ]),

                          Padding(
                            padding: const EdgeInsets.only(top: padding8),
                            child: Utils.customText(
                                text:
                                    "夏になると欲しくなるかごバッグやメッシュ、麻、キャンバス、クリアバッグなど涼しげな素材のバッグを集めました。",
                                size: 10.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: padding8),
                            child: Row(
                              children: [
                                Container(
                                  padding:EdgeInsets.only(right: defaultPadding),
                                  child: imageItem(
                                      imgSize:
                                          size.width / 2-28,
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
                                                  16,
                                              itemValue: 2500,img: "assets/images/ps4_img.png")),
                                      Container(
                                          child: imageItem(
                                              imgSize: size.width / 4 -
                                                  16,
                                              itemValue: 2500,img: "assets/images/ps4_img.png")),
                                      Container(
                                          child: imageItem(
                                              imgSize: size.width / 4 -
                                                  16,
                                              itemValue: 2500,img: "assets/images/ps4_img.png")),
                                      Container(
                                          child: imageItem(
                                              imgSize: size.width / 4 -
                                                  16,
                                              itemValue: 2500,img: "assets/images/ps4_img.png")),
                                    ],
                                  ),
                                )
                              ],
                            ),
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
                  text: "おすすめのピックアップ一覧", fontWeight: FontWeight.bold,size: bigTittleSize),
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
                Border(top: BorderSide(width: 1, color: black12))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Utils.customText(
                text: "ナイトルーティンで素敵な夜を。人気の美顔器5選",
                fontWeight: FontWeight.bold,
                size: normalTextSize),
            SizedBox(
              height: 5,
            ),
            Wrap(
              direction: Axis.horizontal,
              spacing: 4,
              children: [
                imageItem(
                    imgSize: size.width / 4 - 12,
                    itemValue: 2500,img: "assets/images/ps4_img.png"),
                imageItem(
                    imgSize: size.width / 4 - 12,
                    itemValue: 2500,img: "assets/images/ps4_img.png"),
                imageItem(
                    imgSize: size.width / 4 - 12,
                    itemValue: 2500,img: "assets/images/ps4_img.png"),
                imageItem(
                    imgSize: size.width / 4 - 12,
                    itemValue: 2500,img: "assets/images/ps4_img.png"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: padding8),
              child: Utils.customText(
                  text:
                      "毛穴やたるみなどのスキンケアや、ほうれい線、リフトアップをセルフケアしたい！　美容クリニックで使われているプロ仕様のアイテムもメルカリで販売中です。（集計期間：2021年5月〜2022年4月）",
                  size: 10.0),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Utils.customText(
                  text: "すべて見る ＞", size: normalTextSize, color: Colors.blue),
            ),
          ],
        ),
      );
    }, childCount: 8));
  }
}
