import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:merukari_app/Utils/Utils.dart';
import 'package:merukari_app/Utils/imageItem.dart';
import 'package:merukari_app/constants.dart';
import '../Utils/bloc/Bloc.dart';

class ItemDetails extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ItemDetails();
  }
}

class _ItemDetails extends State<ItemDetails> {
  ScrollController _scrollController = new ScrollController();
  bool isShowHeader = false;

  @override
  initState() {
    super.initState();
    _scrollController.addListener(() {
      var y = _scrollController.offset;
      if (y > MediaQuery.of(context).size.height / 2 - 8) {
        if (!isShowHeader) {
          isShowHeader = true;
          setShowHeader(true);
        }
      } else {
        if (isShowHeader) {
          isShowHeader = false;
          setShowHeader(false);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverToBoxAdapter(
              child: ImagePageView(
                size: size,
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(
                  left: defaultPadding, top: padding8, right: defaultPadding),
              sliver: SliverToBoxAdapter(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Utils.customText(
                          text: "PS4 ドラゴンクエストX いばらの巫女と滅びの神",
                          fontWeight: FontWeight.bold,
                          size: normalTextSize),
                      Utils.customText(
                          text: "プレイステーション4",
                          size: smallSubtileSize,
                          color: Colors.black54),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: RichText(
                            text: TextSpan(children: [
                          const TextSpan(
                              text: "¥2680",
                              style: TextStyle(
                                  color: Color(0xFFd91e18),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 30.0)),
                          WidgetSpan(
                              child: Padding(
                            padding: EdgeInsets.only(left: 4.0),
                            child: Utils.customText(
                                text: "送料込み",
                                size: smallSubtileSize,
                                color: Colors.black54),
                          ))
                        ])),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: size.width / 4.2,
                            height: 30,
                            decoration: BoxDecoration(
                                color: black12,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.favorite_outlined,
                                  color: Color(0xFFd91e18),
                                  size: 20,
                                ),
                                Utils.customText(
                                    text: "いいね！",
                                    size: normalTextSize,
                                    color: Colors.black54)
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 16),
                            width: size.width / 4.2,
                            height: 30,
                            decoration: BoxDecoration(
                                color: black12,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.mode_comment_outlined,
                                  color: Colors.black54,
                                  size: 20,
                                ),
                                Utils.customText(
                                    text: "コメント",
                                    size: normalTextSize,
                                    color: Colors.black54),
                              ],
                            ),
                          ),Spacer(),

                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_horiz,
                                size: 20,
                                color: Colors.black54,
                              ))
                        ],
                      ),
                      Divider(
                        height: defaultPadding,
                        thickness: 1,
                        color: Colors.black12,
                      ),
                      Utils.customText(
                          text: "この商品を見ている人におすすめ",
                          size: normalTextSize,
                          color: Colors.black54),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: defaultPadding),
                        height: size.height / 9,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Container(
                                width: size.height / 9,
                                margin: EdgeInsets.only(right: 10),
                                child: imageItem(
                                  imgSize: size.height / 9,
                                  itemValue: 2500,
                                ));
                          },
                          itemCount: 20,
                          scrollDirection: Axis.horizontal,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                color: black12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(defaultPadding),
                      child: Utils.customText(
                          text: "商品の説明",
                          color: Colors.black54,
                          size: normalTextSize),
                    ),
                    Container(
                      padding: EdgeInsets.all(defaultPadding),
                      color: white,
                      child: Utils.customText(
                          text: "※値引き不可※\n"
                              "プレイステーション4ソフト\n"
                              "新品未開封となりますが、外袋の擦れ傷や経年劣化はご容赦ください。\n"
                              "状態は写真でご確認くださいませ。\n"
                              "オンライン専用タイトルです。\n"
                              "ドラゴンクエスト10\n"
                              "DQ10\n"
                              "PlayStation4",
                          line: 100,
                          size: normalTextSize,
                          color: black),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.all(defaultPadding),
                color: black12,
                child: Utils.customText(
                    text: "商品の情報", color: Colors.black54, size: normalTextSize),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Container(
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    color: Color(0xF5F5F5),
                    border:
                        Border(top: BorderSide(width: 0.5, color: black12))),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Utils.customText(
                          text: "カテゴリー",
                          color: Colors.black54,
                          size: normalTextSize,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        color: white,
                        padding: EdgeInsets.all(padding8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Utils.customText(
                                text: "本・音楽・ゲーム",
                                size: normalTextSize,
                                color: Colors.blue,
                                decoration: TextDecoration.underline),
                            Utils.customText(
                                text: "テレビゲーム",
                                size: normalTextSize,
                                color: Colors.blue,
                                decoration: TextDecoration.underline),
                            Utils.customText(
                                text: "家庭用ゲームソフト",
                                size: normalTextSize,
                                color: Colors.blue,
                                decoration: TextDecoration.underline),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    color: Color(0xF5F5F5),
                    border:
                        Border(top: BorderSide(width: 0.5, color: black12))),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Utils.customText(
                          text: "ブランド",
                          color: Colors.black54,
                          size: normalTextSize,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        color: white,
                        padding: EdgeInsets.all(padding8),
                        child: Utils.customText(
                            text: "プレイステーション4",
                            size: normalTextSize,
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    color: Color(0xF5F5F5),
                    border:
                        Border(top: BorderSide(width: 0.5, color: black12))),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Utils.customText(
                          text: "商品の状態",
                          size: normalTextSize,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        color: white,
                        padding: EdgeInsets.all(padding8),
                        child: Utils.customText(
                          text: "新品、未使用",
                          size: normalTextSize,
                          color: black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    color: Color(0xF5F5F5),
                    border:
                        Border(top: BorderSide(width: 0.5, color: black12))),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Utils.customText(
                          text: "商品の状態",
                          size: normalTextSize,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        color: white,
                        padding: EdgeInsets.all(padding8),
                        child: Utils.customText(
                          text: "送料込み(出品者負担)",
                          size: normalTextSize,
                          color: black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    color: Color(0xF5F5F5),
                    border:
                        Border(top: BorderSide(width: 0.5, color: black12))),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Utils.customText(
                          text: "配送の方法",
                          size: normalTextSize,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        color: white,
                        padding: EdgeInsets.all(padding8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Utils.customText(
                              text: "らくらくメルカリ便",
                              size: normalTextSize,
                              color: black,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 4.0),
                              color: Colors.black54,
                              padding: EdgeInsets.all(4.0),
                              child: Utils.customText(
                                  text: "匿名配送",
                                  color: white,
                                  fontWeight: FontWeight.bold,
                                  size: 9.0),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    color: Color(0xF5F5F5),
                    border:
                        Border(top: BorderSide(width: 0.5, color: black12))),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Utils.customText(
                          text: "発送元の地域",
                          size: normalTextSize,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        color: white,
                        padding: EdgeInsets.all(padding8),
                        child: Utils.customText(
                          text: "大阪府",
                          size: normalTextSize,
                          color: black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    color: Color(0xF5F5F5),
                    border:
                        Border(top: BorderSide(width: 0.5, color: black12))),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Utils.customText(
                          text: "発送までの日数",
                          size: normalTextSize,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        color: white,
                        padding: EdgeInsets.all(padding8),
                        child: Utils.customText(
                          text: "2~3日で発送",
                          size: normalTextSize,
                          color: black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: defaultPadding, vertical: padding8),
                decoration: BoxDecoration(
                    color: white,
                    border:
                        Border(top: BorderSide(width: 0.5, color: black12))),
                child: Row(
                  children: [
                    Icon(
                      Icons.lock,
                      color: Colors.yellow,
                      size: 24,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Utils.customText(
                            text: "メルカリ安心への取り組み",
                            size: normalTextSize,
                            fontWeight: FontWeight.bold,
                            color: black),
                        Utils.customText(
                            text: "お金は事務局に支払われ、評価後に振り込まれます",
                            size: smallSubtileSize,
                            color: Colors.black54)
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.navigate_next,
                      color: Colors.red,
                      size: 25,
                    )
                  ],
                ),
              )
            ])),
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                color: black12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: defaultPadding),
                      child: Utils.customText(
                          text: "出品者",
                          color: Colors.black54,
                          size: normalTextSize),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: padding8),
                      color: white,
                      height: 60,
                      padding: EdgeInsets.symmetric(
                          horizontal: defaultPadding, vertical: padding8),
                      child: Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(shape: BoxShape.circle),
                              child: Image.asset(
                                "assets/images/profile_icon.png",
                                height: 40,
                                width: 40,
                                fit: BoxFit.cover,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Utils.customText(
                                    text: "チュオン ",
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    size: normalTextSize),
                                Row(
                                  children: [
                                    RatingBar(
                                        itemSize: 15,
                                        initialRating: 5,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        ratingWidget: RatingWidget(
                                            full: const Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                            ),
                                            half: const Icon(
                                              Icons.star_half,
                                              color: Colors.orange,
                                            ),
                                            empty: const Icon(
                                              Icons.star_outline,
                                              color: Colors.orange,
                                            )),
                                        onRatingUpdate: (value) {}),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 4.0),
                                      child: Text(
                                        "20",
                                        style: TextStyle(
                                            fontSize: normalTextSize,
                                            decoration:
                                                TextDecoration.underline,
                                            color: Colors.blueAccent),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: defaultPadding),
                                      child: Icon(
                                        Icons.check_circle_rounded,
                                        size: 15,
                                        color: Colors.green,
                                      ),
                                    ),
                                    Utils.customText(
                                        text: "本人確認済", size: normalTextSize)
                                  ],
                                )
                              ],
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.red,
                            size: 25,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: defaultPadding,left: defaultPadding),
                      child: Utils.customText(
                          text: "コメント",
                          color: Colors.black54,
                          size: normalTextSize),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
        StreamBuilder(
            stream: showHeaderStream,
            builder: (context, snapshot) {
              var isShow = false;
              if (snapshot.hasData) {
                isShow = snapshot.data as bool;
              }
              return Container(
                padding: EdgeInsets.only(top: size.height / 40),
                decoration: BoxDecoration(
                    color: isShow ? white : Colors.transparent,
                    border: Border(
                        bottom: BorderSide(
                            width: 0.5,
                            color: isShow ? black12 : Colors.transparent))),
                height: size.height / 10,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Positioned(
                          left: 16,
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back_ios_new_rounded,
                              size: 24,
                              color: isShow ? Colors.black26 : Colors.white,
                            ),
                          )),
                      if (isShow)
                        Positioned.fill(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Utils.customText(
                                text: "PS4 ドラゴンクエストX いばらの巫女と滅びの神",
                                color: Colors.black87,
                                line: 1,
                                size: normalTextSize),
                            Utils.customText(
                                text: "¥16,500",
                                line: 1,
                                size: bigTittleSize,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold),
                          ],
                        ))
                    ],
                  ),
                ),
              );
            }),
      ]),
    );
  }
}

class ImagePageView extends StatefulWidget {
  final size;
  List itemImg = [
    "https://static.mercdn.net/item/detail/orig/photos/m47266036098_1.jpg?1653626343",
    "https://static.mercdn.net/item/detail/orig/photos/m47266036098_2.jpg?1653626343",
    "https://static.mercdn.net/item/detail/orig/photos/m47266036098_3.jpg?1653626343",
    "https://static.mercdn.net/item/detail/orig/photos/m47266036098_4.jpg?1653626343",
    "https://static.mercdn.net/item/detail/orig/photos/m47266036098_7.jpg?1653626377"
  ];

  ImagePageView({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ImagePageView();
  }
}

class _ImagePageView extends State<ImagePageView> {
  int currentPage = 0;

  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: widget.size.width,
        height: widget.size.height / 2,
        child: Stack(alignment: FractionalOffset.bottomCenter, children: [
          Container(
            color: black12,
            child: PageView.builder(
              controller: _pageController,
              itemBuilder: (context, index) {
                return Image.network(
                  widget.itemImg[index],
                );
              },
              itemCount: widget.itemImg.length,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
            ),
          ),
          Positioned(
            bottom: defaultPadding,
            child: Row(
                children: List.generate(
                    widget.itemImg.length,
                    (index) => Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: ImageDot(isActive: index == currentPage),
                        ))),
          ),
          if (currentPage > 0)
            Positioned(
                left: 16,
                top: widget.size.height / 4,
                child: InkWell(
                  onTap: () {
                    this.setState(() {
                      currentPage--;
                      _pageController.animateToPage(currentPage,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeIn);
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.white54, shape: BoxShape.circle),
                    child: Center(
                      child: Icon(
                        Icons.navigate_before_sharp,
                        size: 24,
                        color: black,
                      ),
                    ),
                  ),
                )),
          if (currentPage < widget.itemImg.length - 1)
            Positioned(
                right: 16,
                top: widget.size.height / 4,
                child: InkWell(
                  onTap: () {
                    this.setState(() {
                      currentPage++;
                      _pageController.animateToPage(currentPage,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeIn);
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.white54, shape: BoxShape.circle),
                    child: Center(
                      child: Icon(
                        Icons.navigate_next_sharp,
                        size: 24,
                        color: black,
                      ),
                    ),
                  ),
                )),
        ]),
      ),
    );
  }
}

class ImageDot extends StatelessWidget {
  final bool isActive;

  ImageDot({Key? key, required this.isActive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: isActive ? white : Colors.black, shape: BoxShape.circle),
      width: 8,
      height: 8,
    );
  }
}
