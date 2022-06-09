import 'package:flutter/material.dart';

class Susume extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Image.asset("assets/image/susume1.png",width: 200,height: 50,fit: BoxFit.cover,)
          ],
        )
    );
  }
}