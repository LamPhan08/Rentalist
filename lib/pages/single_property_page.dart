import 'package:rentalist/pages/booking_screen.dart';
import 'package:rentalist/pages/reviews.dart';
import 'package:rentalist/pages/write_review.dart';
import 'package:rentalist/utils/constants.dart';
import 'package:rentalist/utils/helper.dart';
import 'package:rentalist/widgets/property_features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SinglePropertyPage extends StatefulWidget {

  @override
  State<SinglePropertyPage> createState() => _SinglePropertyPage();
}

class _SinglePropertyPage extends State<SinglePropertyPage>{
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Builder(builder: (BuildContext context) {
        double heightFromWhiteBg =
            size.height - 200.0; // height for white section
        return Container(
          height: size.height,
          child: Stack(
            children: [
              Positioned(
                width: size.width,
                child: Container(
                  height: size.height,
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/detail.png"),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 410.0,
                width: size.width,
                child: Container(
                  height: heightFromWhiteBg,
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 20.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,

                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Namkha Villa with Pool",
                            style: TextStyle(
                              fontSize: 18.0,
                              height: 1.5,
                              color: Color.fromRGBO(33, 45, 82, 1),
                              fontWeight: FontWeight.w600,
                              fontFamily: 'PT san'
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isClicked = !isClicked;
                              });
                            },

                            child: Icon(
                          (isClicked == false) ? FlutterIcons.favorite_border_mdi : Icons.favorite,
                          color: Constants.primaryColor,
                        ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FlutterIcons.map_pin_fea,
                            color: Color.fromRGBO(138, 150, 190, 1),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: Text(
                              "Phan Thiet, Binh Thuan, Viet Nam",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromRGBO(64, 74, 104, 1),
                                fontFamily: 'PT san'
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      //Property features
                      PropertyFeatures(),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Stunning Country Villa with Pool set in a lovely tropical garden with your own coconut trees!",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 15.0,
                          height: 1.5,
                          color: Color.fromRGBO(138, 150, 190, 1),
                          fontFamily: 'PT san'
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),

                      GestureDetector(
                        onTap: () {
                          Helper.nextPage(context, WriteReview());
                        },
                        child: Text(
                            "Write a review",
                            style: TextStyle(
                              fontSize: 15.0,
                              height: 1.5,
                              color:Constants.primaryColor,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'PT san'
                            ),
                          ),
                      ),

                      SizedBox(
                        height: 13.0,
                      ),


                      GestureDetector(
                          onTap: () {
                            Helper.nextPage(context, Reviews());
                          },
                          child: Container(
                          
                          padding: EdgeInsets.only(left: 16, right: 5),
                          height: ScreenUtil().setHeight(40.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7.0),
                            border: Border.all(color: Color.fromARGB(255, 220, 227, 235))
                          ),
                        
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Ratings and reviews',
                                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, fontFamily: 'PT san'),
                              ),
                              Icon(FlutterIcons.keyboard_arrow_right_mdi, size: 25,)
                            ],
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 15.0,
                      ),

                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(left: 16.0, right: 5.0),
                        height: ScreenUtil().setHeight(56.0),
                        decoration: BoxDecoration(
                          color: Constants.primaryColor,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "120\$ / ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 19.0,
                                      fontFamily: 'PT san'
                                    ),
                                  ),
                                  TextSpan(
                                    text: "night",
                                    style: TextStyle(fontFamily: 'PT san'),
                                  )
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Helper.nextPage(context, BookingScreen());
                              },
                              child: Container(
                                height: ScreenUtil().setHeight(45.0),
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24.0),
                                  color: Colors.white,
                                ),
                                child: Text(
                                  "BOOK ROOM",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.0,
                                    fontFamily: 'PT san'
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
