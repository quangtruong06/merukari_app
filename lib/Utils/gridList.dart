import 'package:flutter/material.dart';

import '../constants.dart';
import 'imageItem.dart';

class gridList extends StatelessWidget {
  final int itemGridCount;
  const gridList({Key? key, required this.itemGridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      sliver: SliverGrid(
          delegate:
          SliverChildBuilderDelegate((BuildContext context, int index) {
            return imageItem(itemValue: 4200,imgSize: defaultImageSize,);
          }, childCount: itemGridCount),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 3, mainAxisSpacing: 3)),
    );
  }
}