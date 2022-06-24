// これはマイページです。
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:merukari_app/Utils/utils.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class ProfilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MaterialButton(onPressed: (){},
                      shape: CircleBorder(),
                      height: 50,
                    child: Image.asset("assets/images/profile_icon.png",height: 50,width: 50,fit: BoxFit.cover,)),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children:[ Utils.customText(text: "チュオン ",color: Colors.black,fontWeight: FontWeight.bold,size: 16.0),
                    Icon(Icons.navigate_next_rounded)]),
                    SizedBox(height: 5,),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RatingBar(
                            itemSize: 15,
                              initialRating: 5,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              ratingWidget: RatingWidget(
                                  full: const Icon(Icons.star, color: Colors.orange,),
                                  half: const Icon(
                                    Icons.star_half,
                                    color: Colors.orange,
                                  ),
                                  empty: const Icon(
                                    Icons.star_outline,
                                    color: Colors.orange,
                                  )),
                              onRatingUpdate: (value) {
                              }),
                          SizedBox(width: 5,),
                          Text("20",style: TextStyle(fontSize: 12,decoration: TextDecoration.underline,color: Colors.blueAccent),),
                          SizedBox(width: 20,),
                          Icon(Icons.check_circle_rounded,size: 15,color: Colors.green,),
                          Utils.customText(text: "本人確認済",size: 12.0)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(),
            )
          ],
        )
      ),
    );
  }
}