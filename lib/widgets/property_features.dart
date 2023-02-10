import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class PropertyFeatures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          item(FlutterIcons.md_people_ion, "2 Adults"),
          SizedBox(
            width: 10.0,
          ),
          item(FlutterIcons.bed_faw, "1 Bed"),
          SizedBox(
            width: 10.0,
          ),
          item(FlutterIcons.wifi_fea, "Free Wifi")
        ],
      ),
    );
  }
}

Widget item(IconData icon, String text) {
  return Expanded(
    child: Container(
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(6.0),
        
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 16.0,
            color: Color(0xFF494A6A),
          ),
          SizedBox(
            width: 7.0,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
              color: Color(0xFF494A6A),
              fontFamily: 'PT san'
            ),
          )
        ],
      ),
    ),
  );
}
