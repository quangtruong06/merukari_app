import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:merukari_app/Mini_Screens/all_comment_screen.dart';
import 'package:merukari_app/Utils/Utils.dart';
import 'package:merukari_app/Utils/gridList.dart';
import 'package:merukari_app/Utils/imageItem.dart';
import 'package:merukari_app/constants.dart';
import '../Utils/bloc/Bloc.dart';

class ItemDetails extends StatefulWidget {
  const ItemDetails({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ItemDetails();
  }
}
class _ItemDetails extends State<ItemDetails> {
  final ScrollController _scrollController = new ScrollController();
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
      backgroundColor: white,
      body: Stack(children: [
        CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverToBoxAdapter(
              child: ImagePageView(
                size: size,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.only(
                    left: defaultPadding, top: padding8, right: defaultPadding),
                color: white,
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
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AllComments()));
                          },
                          child: Container(
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
                          ),
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {
                              showCupertinoModalPopup(context: context, builder: buildActionSheet(context));
                            },
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
            SellerAndComment(size: size),
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.only(
                    left: defaultPadding, bottom: defaultPadding),
                color: black12,
                child: Utils.customText(
                    text: "この商品を見ている人におすすめ",
                    color: Colors.black54,
                    size: normalTextSize),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              sliver: gridList(
                itemGridCount: 50,
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

  buildActionSheet(BuildContext context) {
    return CupertinoActionSheet(
      actions: [
        CupertinoActionSheetAction(onPressed: (){}, child: Utils.customText(text: "この商品をシェア",color: Colors.blue)),
        CupertinoActionSheetAction(onPressed: (){}, child: Utils.customText(text: "この商品を事務",color: Colors.red)),
      ],
      cancelButton: CupertinoActionSheetAction(
        child: Utils.customText(text: "この商品を事務",color: Colors.blue,fontWeight: FontWeight.bold),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}

class SellerAndComment extends StatelessWidget {
  SellerAndComment({
    Key? key,
    required this.size,
  }) : super(key: key);
  final size;
  List commentData = [
    {
      "img": "assets/images/profile_icon.png",
      "name": "Mai",
      "comment": "コメント失礼します。\n2500円は可能でしょうか?\nご検討お願い致します。",
    },
    {
      "img": "assets/images/profile_icon.png",
      "name": "Kien",
      "comment": "コメント失礼します。\n2500円は可能でしょうか?\nご検討お願い致します。",
    },
    {
      "img": "assets/images/profile_icon.png",
      "name": "Kien",
      "comment": "コメント失礼します。\n2500円は可能でしょうか?\nご検討お願い致します。",
    },
    {
      "img": "assets/images/profile_icon.png",
      "name": "Kien",
      "comment": "コメント失礼します。\n2500円は可能でしょうか?\nご検討お願い致します。",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding),
        color: black12,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: defaultPadding),
              child: Utils.customText(
                  text: "出品者", color: Colors.black54, size: normalTextSize),
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
                            const Padding(
                              padding: EdgeInsets.only(left: 4.0),
                              child: Text(
                                "20",
                                style: TextStyle(
                                    fontSize: normalTextSize,
                                    decoration: TextDecoration.underline,
                                    color: Colors.blueAccent),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: defaultPadding),
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
              padding:
                  EdgeInsets.only(top: defaultPadding, left: defaultPadding),
              child: Utils.customText(
                  text: "コメント", color: Colors.black54, size: normalTextSize),
            ),
           CommentWidget(isAllScreen: false, size: size,),
          ],
        ),
      ),
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
class CommentWidget extends StatelessWidget {
  bool isAllScreen=true;
  CommentWidget({required this.isAllScreen, required this.size});
  final Size size;
  List commentData = [
    {
      "img": "assets/images/profile_icon.png",
      "name": "キエン",
      "comment": "コメント失礼します。\n2500円は可能でしょうか?\nご検討お願い致します。",
    },
    {
      "img": "assets/images/profile_icon.png",
      "name": "マイ",
      "comment": "こんにちは！",
    },
    {
      "img": "assets/images/profile_icon.png",
      "name": "チュオン",
      "comment": "Can i bought it?",
    },
    {
      "img": "assets/images/profile_icon.png",
      "name": "Kotaro",
      "comment": "1 yen。",
    },
    {
      "img": "assets/images/profile_icon.png",
      "name": "Kien",
      "comment": "コメント失礼します。\n2500円は可能でしょうか?\nご検討お願い致します。",
    },
    {
      "img": "assets/images/profile_icon.png",
      "name": "Kien",
      "comment": "コメント失礼します。\n2500円は可能でしょうか?\nご検討お願い致します。",
    },
    {
      "img": "assets/images/profile_icon.png",
      "name": "Kien",
      "comment": "コメント失礼します。\n2500円は可能でしょうか?\nご検討お願い致します。",
    },
    {
      "img": "assets/images/profile_icon.png",
      "name": "Kien",
      "comment": "コメント失礼します。\n2500円は可能でしょうか?\nご検討お願い致します。",
    },
  ];
  @override
  Widget build(BuildContext context) {
    var length = (commentData.length > 3 ? 3 : commentData.length);
    if(isAllScreen){
      length = commentData.length;
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var i = 0;
        i < length;i++)
          Container(
            margin: EdgeInsets.only(top: padding8, left: defaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    width: 40,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset(
                      commentData[i]["img"],
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Utils.customText(
                            text: commentData[i]["name"],
                            fontWeight: FontWeight.bold,
                            size: normalTextSize,
                            color: Colors.black54),
                      ),
                      Container(
                        width: size.width-80,
                        padding: EdgeInsets.all(padding8),
                        decoration: const BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5.0),
                              bottomRight: Radius.circular(5.0),
                              bottomLeft: Radius.circular(5.0),
                            )),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Utils.customText(
                                text: commentData[i]["comment"],
                                size: normalTextSize,
                                color: black),

                            Padding(
                              padding: const EdgeInsets.only(top:4.0),
                              child: RichText(text: TextSpan(
                                children: [
                                  WidgetSpan(child: Icon(Icons.access_time,color: Colors.black54,size: 13,)),
                                  TextSpan(
                                    text: "1分前",style: TextStyle(fontSize: smallSubtileSize,color: Colors.black54)
                                  )
                                ]
                              )),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        if(!isAllScreen)
        GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AllComments()),
            );
          },
          child: Center(
            child: Container(
              width: size.width-128,
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              color: Colors.black26,
              margin: EdgeInsets.symmetric(vertical: defaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.mode_comment_outlined,
                    size: 20,
                  ),
                  Utils.customText(
                      text: commentData.length >= 3 ? "全てのコメントを見る" : "コメントする",
                      size: normalTextSize)
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
