import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:merukari_app/Mini_Screens/susume_screen.dart';
import 'package:merukari_app/Screens/barcode_screen.dart';
import 'package:merukari_app/Screens/homepage_screen.dart';
import 'package:merukari_app/Screens/notifications_screen.dart';
import 'package:merukari_app/Screens/profile_screen.dart';
import 'package:merukari_app/Screens/sell_screen.dart';
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
              icon: Icon(Icons.home), label: 'ホーム'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'お知らせ'),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt), label: '出品'),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code_rounded), label: 'メルペイ'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'マイページ'),
        ],
        selectedItemColor: Colors.red,
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        selectedIconTheme: IconThemeData(color: Colors.red),
        unselectedItemColor: Colors.black54,
        unselectedIconTheme: IconThemeData(color: Colors.black54,),
        currentIndex: pageIndex,
        onTap: (index) => setState(() {
          pageIndex = index;
        }),
      ),
    );
  }
}
