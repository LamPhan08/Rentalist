import 'package:rentalist/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Book a Room",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'PT san'
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CHECK IN",
                      style: TextStyle(
                        fontSize: 13.0,
                        fontFamily: 'PT san'
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "Oct 14",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'PT san'
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "Wednesday",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'PT san'
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 45.0,
                  height: 45.0,
                  
                  decoration: BoxDecoration(
                    color: Constants.primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    FlutterIcons.arrowright_ant,
                    color: Colors.white,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CHECK OUT",
                      style: TextStyle(
                        fontSize: 13.0,
                        fontFamily: 'PT san'
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "Oct 17",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'PT san'
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "Saturday",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'PT san'
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
