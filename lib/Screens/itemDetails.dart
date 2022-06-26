import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:merukari_app/Utils/Utils.dart';
import 'package:merukari_app/constants.dart';

import '../Utils/bl;oc/Bloc.dart';

class ItemDetails extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ItemDetails();
  }
}

class _ItemDetails extends State<ItemDetails> {
  ScrollController _scrollController = new ScrollController();
  bool isShoHeader = false;

  @override
  initState() {
    super.initState();
    _scrollController.addListener(() {
      var y = _scrollController.offset;
      if (y > MediaQuery.of(context).size.height/2-8) {
        if (!isShoHeader) {
          isShoHeader = true;
          setShowHeader(true);
        }
      } else {
        if (isShoHeader) {
          isShoHeader = false;
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
            SliverToBoxAdapter(
              child: Container(
                height: 2000,
                color: Colors.black87,
              ),
            )
          ],
        ),
        StreamBuilder(
            stream: showHeaderStream,
            builder: (context, snapshot) {
              var isShow = false;
              if (snapshot.hasData) {
                isShow = snapshot.data as bool;
              }
              return SafeArea(
                child: Container(
                  decoration: BoxDecoration(
                      color: isShow ? white : Colors.transparent,
                      border: Border(
                          bottom: BorderSide(width: 0.5, color: black12))),
                  height: 44,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Positioned(
                          left: 16,
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            size: 24,
                            color: isShow ? Colors.black26 : Colors.white,
                          )),
                      if (isShow)
                        Positioned.fill(
                            child: Column(
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
            })
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
