import 'package:flutter/material.dart';

class Tab extends StatelessWidget {
  final String title;
  final Function press;
  final Color textColor;
  final Color bgColor;

  Tab({this.press, this.title, this.bgColor, this.textColor});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14), color: bgColor),
        child: Text(
          title,
          style: TextStyle(
              color: textColor, fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
