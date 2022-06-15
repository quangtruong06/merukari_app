import 'package:flutter/material.dart';
import 'package:merukari_app/Utils/utils.dart';

class Susume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
                color: Colors.black12,
                child: Image.asset(
                  "assets/images/susume1.png",
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                )),
          ),
          SliverToBoxAdapter(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Utils.customText(
                  text: "いいね！した商品",
                  fontWeight: FontWeight.bold,
                  size: 16.0,
                  color: Colors.black),
              TextButton(
                onPressed: () {},
                child: Utils.customText(
                    text: "すべて見る ＞",
                    fontWeight: FontWeight.normal,
                    size: 13.0,
                    color: Colors.blue),
              )
            ],
          )),
          gridList(
            itemCount: 3,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Utils.customText(
                  text: "閲覧した商品からのおすすめ",
                  fontWeight: FontWeight.bold,
                  size: 16.0,
                  color: Colors.black),
            ),
          ),
          tittleBox(tittleList: "プレイテーション４", tittleDetail: "家庭用ゲームソフト"),
          gridList(itemCount: 6),
          tittleBox(tittleList: "ドラゴンクエスト", tittleDetail: "家庭用ゲームソフト"),
          gridList(itemCount: 6),
          tittleBox(tittleList: "ペルソナ５", tittleDetail: "家庭用ゲームソフト"),
          gridList(itemCount: 6),
          SliverToBoxAdapter(
              child:Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Utils.customText(
                    text: "おすすめの商品",
                    fontWeight: FontWeight.bold,
                    size: 16.0,
                    color: Colors.black),
              )),
          gridList(itemCount: 1000),
        ],
      ),
    );
  }
}

class gridList extends StatelessWidget {
  final int itemCount;
  const gridList({Key? key, required this.itemCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              "assets/images/iine_img1.jpg",
              fit: BoxFit.cover,
            ),
          );
        }, childCount: itemCount),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 3,
          mainAxisSpacing: 3
        ));
  }
}

class tittleBox extends StatelessWidget {
  tittleBox({Key? key, required this.tittleList, required this.tittleDetail})
      : super(key: key);
  final String? tittleList;
  final String? tittleDetail;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Utils.customText(
                text: tittleList,
                fontWeight: FontWeight.bold,
                size: 16.0,
                color: Colors.black),
            Utils.customText(
                text: tittleDetail,
                fontWeight: FontWeight.normal,
                size: 10.0,
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
    ));
  }
}
