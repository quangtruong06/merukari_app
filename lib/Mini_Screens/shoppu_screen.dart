import 'package:flutter/material.dart';

import '../Utils/Utils.dart';

class Shoppu extends StatelessWidget {
  List sliverListItem =[
    "いいね！閲覧履歴","注文履歴","フォロー中のショップ"
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
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
          sliverList(itemTittle: sliverListItem,),
          tittleBox(tittleList: "注目の商品"),
          gridList(itemGridCount: 6),
          tittleBox(tittleList: "閲覧した商品からのおすすめ"),
          gridList(itemGridCount: 6),
          
        ],
      ),
    );
  }
}

class sliverList extends StatelessWidget {
  List? itemTittle;
   sliverList({
    Key? key,this.itemTittle
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate((context,index){
      if (index==0){
        return Container(
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1,color: Colors.black12))
          ),
          child: ListTile(
            title: Utils.customText(text:itemTittle?[index],size: 12.0),
            trailing: Icon(Icons.navigate_next_sharp),
          ),
        );
      }else
      return ListTile(
        title: Utils.customText(text:itemTittle?[index],size: 12.0),
        trailing: Icon(Icons.navigate_next_sharp),
      );
    },childCount: itemTittle?.length)
    );
  }
}

class gridList extends StatelessWidget {
  final int itemGridCount;
  const gridList({Key? key, required this.itemGridCount}) : super(key: key);

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
        }, childCount: itemGridCount),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 3, mainAxisSpacing: 3));
  }
}

class tittleBox extends StatelessWidget {
  tittleBox({Key? key, required this.tittleList})
      : super(key: key);
  final String? tittleList;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
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
        ));
  }
}
