import 'package:UIchallenge3/widgets/product_item.dart';
import 'package:flutter/material.dart';

class ProductRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ProductItem(
            title: 'Sprite',
            subTitle: 'clear hai',
            imagePath: r'assets\greenbottle.png',
            price: '75',
          ),
          ProductItem(
            title: 'Milk',
            subTitle: 'by cow',
            imagePath: r'assets\milkbottle.png',
            price: '100',
          ),
        ],
      ),
    );
  }
}
