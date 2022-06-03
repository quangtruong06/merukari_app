import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:merukari_app/Screens/barcode_screen.dart';
import 'package:merukari_app/Screens/homepage_screen.dart';
import 'package:merukari_app/Screens/notifications_screen.dart';
import 'package:merukari_app/Screens/profile_screen.dart';
import 'package:merukari_app/Screens/sell_screen.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;
  final pages = [
    HomePage(),
    NotificationsPage(),
    SellPage(),
    BarcodePage(),
    ProfilePage()
  ]; //List of Bottombar Screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        //Build a BottomBar
        type: BottomNavigationBarType.fixed,
        iconSize: 30.0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'ホーム'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none), label: 'お知らせ'),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt_outlined), label: '出品'),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: 'メルペイ'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: 'マイページ'),
        ],
        selectedItemColor: Colors.red,
        selectedIconTheme: IconThemeData(color: Colors.red),
        currentIndex: pageIndex,
        onTap: (index) => setState(() {
          pageIndex = index;
        }),
      ),
    );
  }
}
