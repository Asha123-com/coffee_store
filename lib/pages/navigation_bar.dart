import 'package:coffee_project/model/coffee_class.dart';
import 'package:coffee_project/pages/card_page.dart';
import 'package:coffee_project/pages/fifth%20page.dart';
import 'package:coffee_project/pages/first%20page.dart';
import 'package:coffee_project/pages/fourth%20page.dart';
import 'package:coffee_project/pages/second%20page.dart';
import 'package:coffee_project/pages/sign_up_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
class PracticeBottomNavBar extends StatefulWidget {
  const PracticeBottomNavBar({super.key});
  @override
  State<PracticeBottomNavBar> createState() => _PracticeBottomNavBarState();}
class _PracticeBottomNavBarState extends State<PracticeBottomNavBar> {
  List list = [
    CoverPages(),
    HomePage(),
    DeliveryTrackingScreen(),
    CartPage(),
  ];
  List<Icon> allItems = [
    Icon(Icons.home,color: Colors.brown,),
    Icon(Icons.details,color: Colors.brown,),
    Icon(Icons.map,color: Colors.brown,),
    Icon(Icons.favorite,color: Colors.brown,),

  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.white,

        buttonBackgroundColor: Colors.grey,
        index: _currentIndex,
        onTap: (int index) {
          _currentIndex = index;
          setState(() {});
        },
        items: allItems,
      ),
    );
  }
}