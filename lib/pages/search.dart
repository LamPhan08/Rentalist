import 'package:rentalist/utils/constants.dart';
import 'package:rentalist/utils/popular_static_data.dart';
import 'package:rentalist/utils/trending_static_data.dart';
import 'package:rentalist/utils/default_back_button.dart';
import 'package:rentalist/widgets/app_bottom_navigation.dart';
import 'package:rentalist/widgets/house_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/fav_house_card.dart';

class SearchRoom extends StatefulWidget {

  @override
  State<SearchRoom> createState() => _SearchRoom();
}

class _SearchRoom extends State<SearchRoom> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DefaultBackButton(),
        title: Text('Search your apartments', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'PT san'),),
        actions: [
          IconButton(onPressed: () {
            
          }, icon: Icon(FlutterIcons.search1_ant))
        ],
      ),
      body: Container(
       decoration: BoxDecoration(color: Colors.white),
       child: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              
              SizedBox(
                height: 15.0,
              ),


              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: FavHouseCard(house: PopularStaticData.properties[0]),
                
              ),

              

              SizedBox(
                height: 15.0,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: FavHouseCard(house: PopularStaticData.properties[1]),
                
              ),

              SizedBox(
                height: 15.0,
              ),
              
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: FavHouseCard(house: TrendingStaticData.properties[0]),
                
              ),
              
              SizedBox(
                height: 15.0,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: FavHouseCard(house: TrendingStaticData.properties[1]),
                
              ),

              SizedBox(
                height: 25.0,
              ),
            
            ],
          ),
        ),
      ),
    ),
    );
  }

}

