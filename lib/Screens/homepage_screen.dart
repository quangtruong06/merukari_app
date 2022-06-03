import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//これはホームページ
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          height: 35,
          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(color: Colors.grey,width: 1.0),
            borderRadius: BorderRadius.circular(30.0)
          ),
          child: TextField(
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              border: InputBorder.none,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              contentPadding: EdgeInsets.all(14.0),
              hintText: ('なにをお探しですか？'),
              hintStyle: TextStyle(fontSize: 14),
              filled: true
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.home,color: Colors.black,))
        ],
      ),
    );
  }

}