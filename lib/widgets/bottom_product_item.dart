import 'package:UIchallenge3/constant.dart';
import 'package:flutter/material.dart';

class BottomProductItem extends StatelessWidget {
  final String title;
  final String imagePath;

  BottomProductItem({this.imagePath, this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Container(
          height: 210,
          width: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(19), color: Colors.grey[700]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 7,
                ),
                Text(
                  title,
                  style: TextStyle(color: kwhite, fontSize: 22),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(imagePath)
              ],
            ),
          ),
        ));
  }
}
