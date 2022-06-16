import 'package:flutter/material.dart';
import 'package:merukari_app/Utils/imageItem.dart';
import 'package:merukari_app/Utils/utils.dart';
import 'package:merukari_app/constants.dart';

import '../Utils/greySpace.dart';
import '../Utils/gridList.dart';

class Susume extends StatelessWidget {
  const Susume({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
                color: Colors.black12,
                padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                child: Image.asset(
                  "assets/images/susume1.png",
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                )),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: SliverToBoxAdapter(
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
          ),
          const gridList(
            itemGridCount: 3,
          ),
          greySpace(
            paddingTop: 10,
          ),
          SliverPadding(
            padding: const EdgeInsets.only(bottom: defaultPadding),
            sliver: SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.only(
                    top: defaultPadding * 1.5,
                    right: defaultPadding,
                    left: defaultPadding),
                decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(width: 1, color: Colors.black12))),
                child: Utils.customText(
                    text: "閲覧した商品からのおすすめ",
                    fontWeight: FontWeight.bold,
                    size: 16.0,
                    color: Colors.black),
              ),
            ),
          ),
          const tittleBox(tittleList: "プレイテーション４", tittleDetail: "家庭用ゲームソフト"),
          const gridList(itemGridCount: 6,),
          tittleBox(tittleList: "ドラゴンクエスト", tittleDetail: "家庭用ゲームソフト"),
          gridList(itemGridCount: 6),
          tittleBox(tittleList: "ペルソナ５", tittleDetail: "家庭用ゲームソフト"),
          gridList(itemGridCount: 6),
          greySpace(paddingTop: 10.0),
          SliverPadding(
            padding: const EdgeInsets.only(bottom: defaultPadding),
            sliver: SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.only(
                    top: defaultPadding * 1.5,
                    right: defaultPadding,
                    left: defaultPadding),
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(width: 1, color: Colors.black12))),
                child: Utils.customText(
                    text: "おすすめ商品",
                    fontWeight: FontWeight.bold,
                    size: 16.0,
                    color: Colors.black),
              ),
            ),
          ),
          gridList(itemGridCount: 200),
        ],
      ),
    );
  }
}


class tittleBox extends StatelessWidget {
  const tittleBox(
      {Key? key, required this.tittleList, required this.tittleDetail})
      : super(key: key);
  final String? tittleList;
  final String? tittleDetail;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      padding:
          const EdgeInsets.only(left: defaultPadding, right: defaultPadding),
      decoration: const BoxDecoration(
          border: Border(top: BorderSide(width: 1, color: Colors.black12))),
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
      ),
    ));
  }
}
