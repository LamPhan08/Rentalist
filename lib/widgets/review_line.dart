import 'package:flutter_icons/flutter_icons.dart';
import 'package:rentalist/models/property.dart';
import 'package:rentalist/models/review_property.dart';
import 'package:rentalist/pages/single_property_page.dart';
import 'package:rentalist/utils/constants.dart';
import 'package:rentalist/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ReviewLine extends StatefulWidget {
  final ReviewProperty review;

  ReviewLine({required this.review});
  @override
  State<ReviewLine> createState() => _ReviewLine(review: review);
}

class _ReviewLine extends State<ReviewLine> {
  final ReviewProperty review;
  bool isMore = false;
  _ReviewLine({required this.review});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color.fromARGB(255, 220, 227, 235))
      ),
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
                    image: AssetImage(review.avatar),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(44),
                ),
              ),
              Expanded(
                  child: Text(
                review.name,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'PT san'
                ),
              )),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.more_vert)),
            ],
          ),
          SizedBox(
            height: 12.0,
          ),
          Row(
            children: [
              SizedBox(
                width: 10.0,
              ),
              SmoothStarRating(
                starCount: 5,
                rating: review.rate,
                color: Colors.orange,
                borderColor: Colors.orange,
                size: 28,
                isReadOnly: true,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                review.date,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, fontFamily: 'PT san'),
              ),
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isMore = !isMore;
                });
              },
              child: !isMore ? Text(
                review.review,
                style: TextStyle(fontSize: 16, fontFamily: 'PT san', fontWeight: FontWeight.normal),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ) : Text(
                review.review,
                style: TextStyle(fontSize: 16, fontFamily: 'PT san', fontWeight: FontWeight.normal),
                
              ),
            )
          ),

          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
