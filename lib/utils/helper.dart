import 'package:flutter/material.dart';

class Helper {
  Helper(BuildContext context, Type reviews);

  static void nextPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (BuildContext context) {
        return page;
      }),
    );
  }
}
