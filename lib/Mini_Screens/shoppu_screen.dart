import 'package:flutter/material.dart';
import 'package:merukari_app/Utils/greySpace.dart';
import 'package:merukari_app/constants.dart';

import '../Utils/Utils.dart';
import '../Utils/gridList.dart';

class Shoppu extends StatelessWidget {
  List sliverListItem = ["いいね！閲覧履歴", "注文履歴", "フォロー中のショップ"];
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scrollbar(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
                padding: const EdgeInsets.all(padding8),
                color: black12,
                child: Image.asset(
                  "assets/images/susume1.png",
                  width: size.width,
                  fit: BoxFit.cover,
                )),
          ),
          sliverList(
            itemTittle: sliverListItem,
          ),
          greySpace(paddingTop: 0),
          tittleBox(tittleList: "注目の商品"),
          const gridList(itemGridCount: 6),
          greySpace(paddingTop: 10),
          tittleBox(tittleList: "閲覧した商品からのおすすめ"),
          const gridList(itemGridCount: 6),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(top: padding8),
              width: size.width,
              color: black12,
              padding: const EdgeInsets.all(padding8),
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
                    size: bigTittleSize,
                    color: Colors.black)),
          ),
          categoriBox(),
          greySpace(paddingTop: padding8),
          SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: SliverToBoxAdapter(
                child: Utils.customText(
                    text: "おすすめの商品",
                    fontWeight: FontWeight.bold,
                    size: bigTittleSize,
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
  List catagoriItem = [
    {
      "name":"ハンドメイド",
      "color":Colors.orange
    },
    {
      "name":"ハンドメイド",
      "color":Colors.blueAccent
    },
    {
      "name":"コスメ",
      "color":Colors.pink,
    },
    {
      "name":"食べ物・飲み物",
      "color":Colors.redAccent,
    },
    {
      "name":"インテリア\n住まい・小物",
      "color":Colors.lightGreenAccent
    },
    {
      "name":"その他",
      "color": Colors.green
    },
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
                  color: catagoriItem[index]["color"],
                  height: 50,
                  child: Image.asset(
                    logo[index],
                    fit: BoxFit.fill,
                    width: 40,
                  ),
                ),
                Utils.customText(text: catagoriItem[index]["name"], size: 13.0)
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
                  Border(bottom: BorderSide(width: 1, color: black12))),
          child: ListTile(
            title: Utils.customText(text: itemTittle?[index], size: normalTextSize),
            trailing: Icon(Icons.navigate_next_sharp),
          ),
        );
      } else {
        return ListTile(
          title: Utils.customText(text: itemTittle?[index], size: normalTextSize),
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
              size: bigTittleSize,
              color: black),
          TextButton(
            onPressed: () {},
            child: Utils.customText(
                text: "すべて見る ＞",
                fontWeight: FontWeight.normal,
                size: normalTextSize,
                color: Colors.blue),
          )
        ],
      )),
    );
  }
}
