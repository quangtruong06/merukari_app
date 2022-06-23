// これはマイページです。
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:merukari_app/Utils/utils.dart';

class ProfilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20,),
                    MaterialButton(onPressed: (){},
                      shape: CircleBorder(),
                      height: 50,
                    child: Image.asset("assets/images/profile_icon.png",height: 50,width: 50,fit: BoxFit.cover,)),
                    SizedBox(height: 10,),
                    Utils.customText(text: "チュオン",color: Colors.black,fontWeight: FontWeight.bold,size: 16.0),

                  ],
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}