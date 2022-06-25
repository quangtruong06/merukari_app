import 'package:flutter/material.dart';
import 'package:merukari_app/constants.dart';

class greySpace extends StatelessWidget{
  final double paddingTop;
  greySpace({Key? key,required this.paddingTop}):super(key:key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverPadding(
      padding: EdgeInsets.only(top: paddingTop),
      sliver: SliverToBoxAdapter(
        child: SizedBox(
          width: size.width,
          height: 10,
          child: const DecoratedBox(decoration: BoxDecoration(
              color: black12
          ),),
        ),
      ),
    );
  }

}