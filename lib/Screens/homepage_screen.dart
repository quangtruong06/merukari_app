import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/DataSearch.dart';

//これはホームページ
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          height: 35,
          child: TextField(
            onTap: () {
              // FocusScope.of(context).requestFocus(FocusNode());
              showSearch(context: context, delegate: DataSearch());
            },
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search,color: Colors.black54,size: 16,),
                filled: true,
                fillColor: Colors.grey,
                contentPadding: EdgeInsets.only(left: 8, right: 8),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(16)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(16)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(1)),
                hintText: "なにをお探しですか?",
                hintStyle: TextStyle(fontSize: 12)),
            cursorWidth: 0,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.check,
                color: Colors.black,
              ))
        ],
      ),
    );
  }
}
