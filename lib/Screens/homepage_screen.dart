import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:merukari_app/Mini_Screens/mairisuto_screen.dart';
import 'package:merukari_app/Mini_Screens/pikkuappu_screen.dart';
import 'package:merukari_app/Mini_Screens/shoppu_screen.dart';
import 'package:merukari_app/Mini_Screens/susume_screen.dart';
import 'package:merukari_app/constants.dart';
import '../Utils/DataSearch.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  List tabsText = ["マイリスト", "おすすめ", "ショップ", "ピックアップ"];
  List tabView = [Mairisuto(), Susume(), Shoppu(), Pikkuappu()];
  List<Tab> tabMaker() {
    List<Tab> tabs = [];
    for (var i = 0; i < tabsText.length; i++) {
      tabs.add(Tab(
        text: tabsText[i],
      ));
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Container(
              height: 35,
              child: TextField(
                onTap: () {
                  // FocusScope.of(context).requestFocus(FocusNode());
                  showSearch(context: context, delegate: DataSearch());
                },
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black54,
                      size: 16,
                    ),
                    filled: true,
                    fillColor: Colors.grey,
                    contentPadding: EdgeInsets.only(left: 8, right: 8),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.circular(16)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.circular(16)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(1)),
                    hintText: "なにをお探しですか?",
                    hintStyle: TextStyle(fontSize: 12)),
                cursorWidth: 0,
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.check,
                    color: Colors.black,
                    size: 30,
                  ))
            ],
            bottom: TabBar(
              tabs: tabMaker(),
              indicatorColor: setAppColor,
              isScrollable: true,
              indicatorWeight: 3,
              labelColor: setAppColor,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelColor: Colors.black54,
              unselectedLabelStyle:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            )),
        body: TabBarView(
            children: [Mairisuto(), Susume(), Shoppu(), Pikkuappu()]),
      ),
    );
  }
}
