import 'package:flutter/material.dart';
import 'package:merukari_app/Utils/greySpace.dart';
import 'package:merukari_app/constants.dart';

import '../Utils/Utils.dart';
import '../Utils/gridList.dart';

class Shoppu extends StatelessWidget {
  List sliverListItem = ["いいね！閲覧履歴", "注文履歴", "フォロー中のショップ"];
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
                padding: const EdgeInsets.all(defaultPadding),
                color: Colors.black12,
                child: Image.asset(
                  "assets/images/susume1.png",
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                )),
          ),
          sliverList(
            itemTittle: sliverListItem,
          ),
          greySpace(paddingTop: 10),
          tittleBox(tittleList: "注目の商品"),
          const gridList(itemGridCount: 6),
          greySpace(paddingTop: 10),
          tittleBox(tittleList: "閲覧した商品からのおすすめ"),
          const gridList(itemGridCount: 6),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.only(top: defaultPadding),
              color: Colors.black12,
              padding: const EdgeInsets.all(defaultPadding),
              child: Image.asset(
                "assets/images/shopimg.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
                child: Utils.customText(
                    text: "カテゴリー",
                    fontWeight: FontWeight.bold,
                    size: 16.0,
                    color: Colors.black)),
          ),
          categoriBox(),
          greySpace(paddingTop: defaultPadding),
          SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: SliverToBoxAdapter(
                child: Utils.customText(
                    text: "おすすめの商品",
                    fontWeight: FontWeight.bold,
                    size: 16.0,
                    color: Colors.black)),
          ),
          const gridList(itemGridCount: 200)
        ],
      ),
    );
  }
}
class categoriBox extends StatelessWidget {
  List logo = [
    "assets/logo/categori1.png",
    "assets/logo/categori2.png",
    "assets/logo/categori3.png",
    "assets/logo/categori4.png",
    "assets/logo/categori5.png",
    "assets/logo/categori6.png",
  ];
  List name = [
    "ハンドメイド",
    "アパレル",
    "コスメ",
    "食べ物・飲み物",
    "インテリア\n住まい・小物",
    "その他",
  ];
  List color = [
    Colors.orange,
    Colors.blueAccent,
    Colors.pink,
    Colors.redAccent,
    Colors.lightGreenAccent,
    Colors.green
  ];
  categoriBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return Container(
            child: Column(
              children: [
                MaterialButton(
                  onPressed: () {},
                  shape: CircleBorder(),
                  color: color[index],
                  height: 50,
                  child: Image.asset(
                    logo[index],
                    fit: BoxFit.fill,
                    width: 40,
                  ),
                ),
                Utils.customText(text: name[index], size: 13.0)
              ],
            ),
          );
        }, childCount: 6),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 1,
          mainAxisExtent: 90,
        ));
  }
}

class sliverList extends StatelessWidget {
  List? itemTittle;
  sliverList({Key? key, this.itemTittle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
      if (index == 0) {
        return Container(
          decoration: const BoxDecoration(
              border:
                  Border(bottom: BorderSide(width: 1, color: Colors.black12))),
          child: ListTile(
            title: Utils.customText(text: itemTittle?[index], size: 12.0),
            trailing: Icon(Icons.navigate_next_sharp),
          ),
        );
      } else {
        return ListTile(
          title: Utils.customText(text: itemTittle?[index], size: 12.0),
          trailing: const Icon(Icons.navigate_next_sharp),
        );
      }
    }, childCount: itemTittle?.length));
  }
}



class tittleBox extends StatelessWidget {
  tittleBox({Key? key, required this.tittleList}) : super(key: key);
  final String? tittleList;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      sliver: SliverToBoxAdapter(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Utils.customText(
              text: tittleList,
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
    );
  }
}
