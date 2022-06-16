import 'package:flutter/material.dart';
import 'package:merukari_app/Utils/Utils.dart';
import 'package:merukari_app/constants.dart';

class Pikkuappu extends StatelessWidget {
  const Pikkuappu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bigImg =160;
    return Scrollbar(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(defaultPadding),
                    child: Utils.customText(
                        text: "おすすめのピックアップ", fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    width: size.width,
                    height: size.width / 1.5,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomLeft,
                      stops: [
                        0.6,
                        0.9,
                      ],
                      colors: [Color(0xFFffd0db), Color(0xFF66D7EB)],
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Utils.customText(
                                  text: "夏素材のバッグで季節を先取りしよう",
                                  fontWeight: FontWeight.bold),
                              Icon(Icons.navigate_next)
                            ]),

                        Utils.customText(text:
                          "夏になると欲しくなるかごバッグやメッシュ、麻、キャンバス、クリアバッグなど涼しげな素材のバッグを集めました。",size: 10.0
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Stack(children:[
                              Image.asset("assets/images/iine_img1.jpg",width: 160,),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                child: (
                                    Container(
                                  alignment: Alignment.center,
                                  color: Colors.black54,
                                  height: 20,
                                  width: 60,
                                  child: Utils.customText(text:"¥2,500",color: Colors.white,size: 13.0,fontWeight: FontWeight.bold),
                                )),
                              )
                            ]),
                            GridView.count(crossAxisCount: 2,
                            children: [

                            ],)
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
