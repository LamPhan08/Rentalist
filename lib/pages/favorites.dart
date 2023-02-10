import 'package:rentalist/utils/constants.dart';
import 'package:rentalist/utils/helper.dart';
import 'package:rentalist/utils/popular_static_data.dart';
import 'package:rentalist/widgets/app_bottom_navigation.dart';
import 'package:rentalist/widgets/house_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rentalist/utils/trending_static_data.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalist/pages/search.dart';
import '../widgets/fav_house_card.dart';
import 'package:rentalist/pages/discovery.dart';

class Favorites extends StatefulWidget {

  @override
  State<Favorites> createState() => _Favorites();
}

class _Favorites extends State<Favorites> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Stack(children: [

        Container(decoration: BoxDecoration(color: Colors.white),),

        SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "Favorites",
                  style: TextStyle(
                    fontSize: 26.0,
                    height: 1.5,
                    color: Color.fromRGBO(33, 45, 82, 1),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'PT san'
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: FavHouseCard(house: PopularStaticData.properties[0]),
              ),

              SizedBox(
                height: 15.0,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: FavHouseCard(house: PopularStaticData.properties[1]),
              ),

              SizedBox(
                height: 15.0,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: FavHouseCard(house: PopularStaticData.properties[2]),
              ),
              

              SizedBox(
                height: 15.0,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: FavHouseCard(house: PopularStaticData.properties[3]),
              ),

              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: FavHouseCard(house: TrendingStaticData.properties[0]),
              ),
              
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: FavHouseCard(house: TrendingStaticData.properties[1]),
              ),
              
              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: FavHouseCard(house: TrendingStaticData.properties[2]),
              ),
              
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: FavHouseCard(house: TrendingStaticData.properties[3]),
              ),
              
              SizedBox(
                height: 25.0,
              ),
            
            ],
          ),
        ),
      ),
       ],)
    );
    }
  }