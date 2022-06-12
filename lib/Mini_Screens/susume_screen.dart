import 'package:flutter/material.dart';
import 'package:merukari_app/Utils/utils.dart';

class Susume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
              color: Colors.black12,
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Image.asset(
                "assets/images/susume1.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              )),
        ),
        SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Utils.customText(
                  text: "いいね！した商品",
                  fontWeight: FontWeight.bold,
                  size: 16.0,
                  color: Colors.black),
              Utils.customText(
                  text: "すべて見る ＞",
                  fontWeight: FontWeight.normal,
                  size: 16.0,
                  color: Colors.blue),
            ],
          ),
        )),
        SliverGrid(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                color: Colors.pink,
              );
            }, childCount: 3),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 4,
            ))
      ],
    );
  }
}
