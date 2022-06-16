import 'package:flutter/material.dart';
import 'package:merukari_app/Utils/Utils.dart';
import 'package:merukari_app/Utils/imageItem.dart';
import 'package:merukari_app/constants.dart';

class Pikkuappu extends StatelessWidget {
  const Pikkuappu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double bigImg =160.0;
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
                    height: size.height / 3.3,
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
                        SizedBox(height: 10,),
                        Utils.customText(text:
                          "夏になると欲しくなるかごバッグやメッシュ、麻、キャンバス、クリアバッグなど涼しげな素材のバッグを集めました。",size: 10.0
                        ),
                        SizedBox(height: 20,),
                        Wrap(
                          direction: Axis.horizontal,
                            children: [
                              imageItem(imgSize: bigImg, itemValue: 2500),
                              gridViewer()
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
class gridViewer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 2,
    children: List.generate(4, (index) {
      return imageItem(imgSize: defaultImageSize/2, itemValue: 2500);
        }),);
  }

}
