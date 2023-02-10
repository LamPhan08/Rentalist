import 'package:rentalist/utils/constants.dart';
import 'package:rentalist/widgets/booking_details.dart';
import 'package:rentalist/widgets/booking_property_features.dart';
import 'package:rentalist/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class BookingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
     
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_ios,

          ),
        ),
        title: Text(
          "Select Dates",
          style: TextStyle(
            fontFamily: 'PT san',
            fontWeight: FontWeight.w400
          ),
        ),
      ),
      body: 
         Container(
          decoration: BoxDecoration(color: Colors.white),
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              SizedBox(
                height: 15.0,
              ),
              Container(
                height: 350.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: Color.fromARGB(255, 220, 227, 235))
                ),
                child: SfDateRangePicker(
                  selectionMode: DateRangePickerSelectionMode.range,
                  headerStyle: DateRangePickerHeaderStyle(
                    textAlign: TextAlign.center,
                    textStyle: TextStyle(fontFamily: 'PT san', color: Colors.black)
                  ),
                  enablePastDates: false,
                ),
              ),
              BookingDetails(),
              BookingPropertyFeatures(),
              SizedBox(
                height: 40.0,
              ),
              PrimaryButton(
                text: "BOOK ROOM",
                onPressed: () {},
              )
            ],
          ),
        ),
      );
  }
}
