import 'package:UIchallenge3/widgets/bottom_product_item.dart';
import 'package:flutter/material.dart';

class BottomProductRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          BottomProductItem(
            title: 'Mask',
            imagePath: r'assets\Face-Mask-PNG-Transparent-HD-Photo.png',
          ),
          BottomProductItem(
            title: 'Gloves',
            imagePath: r'assets\gloves.png',
          ),
        ],
      ),
    );
  }
}
