import 'package:flutter/material.dart';

import '../constants.dart';
import 'Utils.dart';

class TextNext extends StatelessWidget{
  TextNext({ this.text});
  String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      padding: EdgeInsets.only(left: defaultPadding),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.0),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 1,color: black12))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Utils.customText(text: text,size: 14.0,color: Colors.black87),
            const Icon(Icons.navigate_next,color: Colors.black54,)
          ],
        ),
      ),
    );
  }

}