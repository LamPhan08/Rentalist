import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingPropertyFeatures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Color.fromARGB(255, 220, 227, 235))
      ),
      child: Row(
        children: [
          item("Room", "01"),
          item("Adult", "02"),
          item("Child", "0"),
        ],
      ),
    );
  }
}

Widget item(String title, String count) {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: Color.fromRGBO(138, 150, 190, 0.2),
          ),
        ),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(fontFamily: 'PT san'),
          ),
          Text(
            count,
            style: TextStyle(fontFamily: 'PT san'),
          ),
        ],
      ),
    ),
  );
}
