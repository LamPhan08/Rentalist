import 'package:rentalist/pages/favorites.dart';
import 'package:rentalist/utils/constants.dart';
import 'package:rentalist/utils/helper.dart';
import 'package:rentalist/utils/popular_static_data.dart';
import 'package:rentalist/widgets/app_bottom_navigation.dart';
import 'package:rentalist/widgets/house_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalist/pages/search.dart';
import '../widgets/fav_house_card.dart';
import 'package:rentalist/pages/discovery.dart';

class Dashboard extends StatefulWidget {

  @override
  State<Dashboard> createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  
  final tabs = [
    Discovery(),

    Favorites(),

    Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
      child: Text('This function is still under development', style: TextStyle(fontFamily: 'PT san', fontSize: 19),),
      ),
    ),

    Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
      child: Text('This function is still under development', style: TextStyle(fontFamily: 'PT san', fontSize: 19),),
      ),
    ),

    Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
      child: Text('This function is still under development', style: TextStyle(fontFamily: 'PT san', fontSize: 19),),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(FlutterIcons.home_fea), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(FlutterIcons.favorite_border_mdi), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(FlutterIcons.grid_fea), label: 'Menu'),
          BottomNavigationBarItem(icon: Icon(FlutterIcons.mail_fea), label: 'Messages'),
          BottomNavigationBarItem(icon: Icon(FlutterIcons.user_ant), label: 'Profile'),
        ], 
        iconSize: 23,
        selectedFontSize: 13,
        unselectedFontSize: 11,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Constants.primaryColor,
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
      ),
      body: Center(child: tabs[_currentIndex],)
    );
  }
}
