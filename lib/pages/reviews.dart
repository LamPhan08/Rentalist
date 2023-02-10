import 'package:rentalist/utils/constants.dart';
import 'package:rentalist/utils/popular_static_data.dart';
import 'package:rentalist/utils/review_static_data.dart';
import 'package:rentalist/widgets/app_bottom_navigation.dart';
import 'package:rentalist/widgets/house_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentalist/widgets/review_line.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../widgets/fav_house_card.dart';
import '../utils/default_back_button.dart';

class Reviews extends StatefulWidget {
  @override
  State<Reviews> createState() => _Reviews();
}

class _Reviews extends State<Reviews> {
  bool isMore = false;
  List<double> ratings = [0.1, 0.3, 0.5, 0.7, 0.9];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ratings and reviews',
          style: TextStyle( fontWeight: FontWeight.w400, fontFamily: 'PT san'),
        ),
        leading: DefaultBackButton(),
        
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 2, bottom: 2, left: 13, right: 13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.0,
              ),

              Row(
                children: [
                  SizedBox(
                width: 10.0,
              ),
                  
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "4.5",
                            style: TextStyle(fontSize: 48.0, fontFamily: 'PT san'),
                          ),
                          TextSpan(
                            text: "/5",
                            style: TextStyle(
                              fontSize: 24.0,
                              color: Color(0xFF808080),
                              fontFamily: 'PT san'
                            ),
                          ),
                        ],
                      ),
                    ),
                    SmoothStarRating(
                      starCount: 5,
                      rating: 4.5,
                      size: 28.0,
                      color: Colors.orange,
                      borderColor: Colors.orange,
                      isReadOnly: true,
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      "7 reviews",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xFF808080),
                        fontFamily: 'PT san'
                      ),
                    ),
                  ],
                ),

                SizedBox(
                width: 16.0,
              ),

                Container(
                  width: 200.0,
                  child: ListView.builder(
                    shrinkWrap: true,
                    reverse: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Text(
                            "${index + 1}",
                            style: TextStyle(fontSize: 16.0, fontFamily: 'PT san'),
                          ),
                          SizedBox(width: 4.0),
                          Icon(Icons.star, color: Colors.orange),
                          SizedBox(width: 8.0),
                          LinearPercentIndicator(
                            lineHeight: 6.0,
                            // linearStrokeCap: LinearStrokeCap.roundAll,
                            width: MediaQuery.of(context).size.width / 2.8,
                            animation: true,
                            animationDuration: 2500,
                            percent: ratings[index],
                            progressColor: Colors.orange,
                          ),
                        ],
                      );
                    },
                  ),
                ),

                ],
              ),

              SizedBox(
                height: 30.0,
              ),

              ReviewLine(review: ReviewStaticData.properties[0],),
              
              SizedBox(
                height: 10.0,
              ),
              
              ReviewLine(review: ReviewStaticData.properties[1],),

              SizedBox(
                height: 10.0,
              ),

              ReviewLine(review: ReviewStaticData.properties[2],),

              SizedBox(
                height: 10.0
              ),

              ReviewLine(review: ReviewStaticData.properties[3],),

              SizedBox(
                height: 10.0,
              ),

             ReviewLine(review: ReviewStaticData.properties[4],),

              SizedBox(
                height: 10.0,
              ),

              ReviewLine(review: ReviewStaticData.properties[5],),
              
              SizedBox(
                height: 10.0,
              ),

              ReviewLine(review: ReviewStaticData.properties[6],),
              
              SizedBox(
                height: 20.0,
              ),
            ],
          )),
      )
    );
  }
}
