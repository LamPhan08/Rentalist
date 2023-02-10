import 'package:rentalist/utils/constants.dart';
import 'package:rentalist/utils/popular_static_data.dart';
import 'package:rentalist/widgets/app_bottom_navigation.dart';
import 'package:rentalist/widgets/house_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../widgets/fav_house_card.dart';
import '../utils/default_back_button.dart';

class WriteReview extends StatefulWidget {
  @override
  State<WriteReview> createState() => _WriteReview();
}

class _WriteReview extends State<WriteReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Rate this apartment',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontFamily: 'PT san'),
        ),
        leading: DefaultBackButton(),
        
        actions: [
          TextButton(onPressed: () {}, child: Text('POST', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontFamily: 'PT san'),))
        ],
      ),
      body: Container(
          decoration: BoxDecoration(color: Colors.white),
          padding: EdgeInsets.only(top: 2, bottom: 2, left: 13, right: 13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          margin: EdgeInsets.only(right: 15, left: 10, top: 10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/dp.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(44),
                          ),
                        ),
                        Expanded(
                            child: Text(
                          'Username',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'PT san'
                          ),
                        )),
                       
                      ],
                    ),
                  
                    Row(
                      children: [
                        SizedBox(
                          width: 70.0,
                        ),
                        
                        Text(
                          'Your reviews are public and include \nyour account.',
                          style: TextStyle(fontSize: 16, fontFamily: 'PT san', color: Color.fromRGBO(64, 74, 106, 1)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: SmoothStarRating(
                      starCount: 5,
                      rating: 0,
                      color: Colors.orange,
                      borderColor: Colors.orange,
                      size: 40,
                      spacing: 20,
                      )
                    ),

                    SizedBox(
                      height: 20.0,
                    ),

                   Container(
                    height: ScreenUtil().setHeight(59.0),
                    width: ScreenUtil().setWidth(340),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(251, 251, 251, 1),
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Color.fromARGB(255, 220, 227, 235))
                    ),
                    padding: EdgeInsets.only(left: 16.0, right: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Describe your experience (optional)",
                                hintStyle: TextStyle(
                                  color: Color.fromRGBO(153, 163, 196, 1),
                                  fontFamily: 'PT san'
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                      height: 10.0,
                    ),

                  Row(
                    children: [
                      SizedBox(
                      width: 320.0,
                    ),
                      Text('0/500', style: TextStyle(fontSize: 15, fontFamily: 'PT san')),
                    ],
                  ),
                  ],
                ),
              ),
              
              SizedBox(
                height: 15.0,
              ),
            ],
          )
        ),
      );
  }
}
