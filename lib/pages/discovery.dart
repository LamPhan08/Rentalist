import 'package:rentalist/utils/constants.dart';
import 'package:rentalist/utils/helper.dart';
import 'package:rentalist/utils/popular_static_data.dart';
import 'package:rentalist/utils/trending_static_data.dart';
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

class Discovery extends StatefulWidget {

  @override
  State<Discovery> createState() => _Discovery();
}

class _Discovery extends State<Discovery> {
  int _currentIndex = 0;

  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              SafeArea(child: SizedBox()),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset("assets/svg/menu.svg"),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 20.0,
                      backgroundImage: AssetImage("assets/images/dp.png"),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  "Let's Find Your\nApartments",
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
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Container(
                  height: ScreenUtil().setHeight(59.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(251, 251, 251, 1),
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Color.fromARGB(255, 220, 227, 235))
                  ),
                  padding: EdgeInsets.only(left: 16.0, right: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search your apartments...",
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(153, 163, 196, 1),
                                fontFamily: 'PT san'
                              )
                              ),
                        ),
                      ),
                      Container(
                        
                        child: IconButton(
                          icon: new Icon(FlutterIcons.search1_ant),
                          color: Colors.grey,
                          onPressed: () {
                            Helper.nextPage(context, SearchRoom());
                          },
                        ),

                        
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.0,
                ),
                child: Text(
                  "Popular",
                  style: TextStyle(
                    fontSize: 18.0,
                    height: 1.5,
                    color: Color.fromRGBO(33, 45, 82, 1),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'PT san'
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: ScreenUtil().setHeight(300.0),
                // Lets create a model to structure property data
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    // Lets create a property card widget
                    return HouseCard(
                      house: PopularStaticData.properties[index],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 10.0,
                    );
                  },
                  // Make the length our static data length
                  itemCount: PopularStaticData.properties.length,
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.0,
                ),
                child: Text(
                  "Trending",
                  style: TextStyle(
                    fontSize: 18.0,
                    height: 1.5,
                    color: Color.fromRGBO(33, 45, 82, 1),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'PT san'
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: ScreenUtil().setHeight(300.0),
                // Lets create a model to structure property data
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    // Lets create a property card widget
                    return HouseCard(
                      house: TrendingStaticData.properties[index],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 10.0,
                    );
                  },
                  // Make the length our static data length
                  itemCount: TrendingStaticData.properties.length,
                ),
              ),

              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}