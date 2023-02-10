import 'package:rentalist/pages/dashboard.dart';
import 'package:rentalist/utils/constants.dart';
import 'package:rentalist/utils/helper.dart';
import 'package:rentalist/widgets/page_indicator.dart';
import 'package:rentalist/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageTemplate extends StatelessWidget {
  final int activePage;
  final String imagePath;
  final String title;

  HomePageTemplate({required this.activePage, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height,
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    this.imagePath,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
            constraints: BoxConstraints(minWidth: _size.height * 0.4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  this.title,
                  style: TextStyle(
                    fontSize: 26.0,
                    height: 1.5,
                    color: Color.fromRGBO(33, 45, 82, 1),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'PT san'
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                PageIndicator(activePage: activePage),
                SizedBox(
                  height: 50.0,
                ),
                PrimaryButton(
                  text: "Get Started",
                  onPressed: () {
                    Helper.nextPage(context, Dashboard());
                  },
                )
              ],
            ),
          ),
          Center(
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              runAlignment: WrapAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    color: Color.fromRGBO(64, 74, 106, 1),
                    fontFamily: 'PT san',
                    fontSize: 15
                  )
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Log In",
                    style: TextStyle(
                    color: Constants.primaryColor,
                    fontFamily: 'PT san',
                    fontSize: 15
                  )
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
        ],
      ),
    );
  }
}
