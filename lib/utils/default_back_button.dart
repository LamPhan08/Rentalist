import 'package:flutter/material.dart';


class DefaultBackButton extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios),
      onPressed: () => Navigator.of(context).pop(),
    );
  }
}