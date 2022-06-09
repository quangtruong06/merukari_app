// これはマイページです。
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:merukari_app/Utils/utils.dart';

class ProfilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  MaterialButton(onPressed: (){},
                  shape: CircleBorder(),
                  color: Colors.red,height: 60,),
                  SizedBox(height: 10,),
                  Utils.customText(text: "チュオン >",color: Colors.black,fontWeight: FontWeight.bold,size: 16.0)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}