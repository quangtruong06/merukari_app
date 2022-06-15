//これはメルペイのペジ
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BarcodePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double maxHeight = MediaQuery.of(context).size.height;
    double maxWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.red,
        width: double.maxFinite,
        height: maxHeight*0.40,
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: maxWidth*0.9,
                height: maxHeight*0.22,
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}