//これはメルペイのペジ
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:merukari_app/Utils/Utils.dart';
import 'package:merukari_app/constants.dart';

class BarcodePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.red,
        width: size.width,
        height: size.height*0.40,
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(defaultPadding*2),
                width: size.width*0.9,
                height: size.height*0.22,
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/logo/merupay_logo.png",width: 55,),
                    Utils.customText(text: "街の店で決済",size: 12.0,fontWeight: FontWeight.bold),
                    SizedBox(height: defaultPadding,),
                    Image.asset("assets/images/barcode.png",height: 30,width: 150,fit: BoxFit.fill,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}