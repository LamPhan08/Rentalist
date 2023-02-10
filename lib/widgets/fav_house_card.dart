import 'package:flutter_icons/flutter_icons.dart';
import 'package:rentalist/models/property.dart';
import 'package:rentalist/pages/single_property_page.dart';
import 'package:rentalist/utils/constants.dart';
import 'package:rentalist/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class FavHouseCard extends StatefulWidget {
  final Property house;
  FavHouseCard({required this.house});

  @override
  State<FavHouseCard> createState() => _FavHouseCard(house: house,);
}

class _FavHouseCard extends State<FavHouseCard>{
  final Property house;
  bool isClicked = true;
  _FavHouseCard({required this.house});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Helper.nextPage(context, SinglePropertyPage());
      },
      child: Container(
        height: ScreenUtil().setHeight(450.0),
        width: ScreenUtil().setWidth(330.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Color(0xFFF4F5F6),
          border: Border.all(color: Color.fromARGB(255, 220, 227, 235))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      house.imagePath,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    house.name,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromRGBO(33, 45, 82, 1),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'PT san'
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    house.description,
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color.fromRGBO(138, 150, 190, 1),
                      fontFamily: 'PT san'
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "From\n",
                              style: TextStyle(
                                color: Color.fromRGBO(64, 74, 106, 1),
                                fontWeight: FontWeight.w500,
                                fontFamily: 'PT san'
                              ),
                            ),
                            TextSpan(
                              text: house.price,
                              style: TextStyle(
                                color: Color.fromRGBO(33, 45, 82, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: 22.0,
                                fontFamily: 'PT san'
                              ),
                            ),
                          ],
                        ),
                      ),
                       Column(
                        children: [
                          Row(
                            children: [
                                SmoothStarRating(
                              isReadOnly: true,
                              starCount: 1,
                              rating: 1,
                              size: 18,
                              color: Colors.orange,
                              borderColor: Colors.orange,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text('4,5', style: TextStyle(fontFamily: 'PT san', fontWeight: FontWeight.w400),)
                            ],
                          ),

                          SizedBox(
                            height: 7,
                          ),

                          Padding(
                            padding: EdgeInsets.only(left: 21),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isClicked = !isClicked;
                                });
                                },
                              child: Icon(
                                (isClicked == false) ? FlutterIcons.favorite_border_mdi : Icons.favorite,
                                color: Constants.primaryColor, size: 22,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
