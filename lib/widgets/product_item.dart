import 'package:UIchallenge3/constant.dart';
import 'package:UIchallenge3/screens/product_detail_screen.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subTitle;
  final String price;

  ProductItem({
    this.title,
    this.imagePath,
    this.price,
    this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(ProductDetailScreen.routeName,
            arguments: {
              'title': title,
              'imagePath': imagePath,
              'price': price,
              'subTitle': subTitle
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
        child: Stack(overflow: Overflow.visible, children: [
          Container(
            width: 180,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey[700],
              borderRadius: BorderRadius.circular(13),
            ),
          ),
          Positioned(
            left: 50,
            right: 50,
            bottom: 100,
            child: Container(
              height: 200,
              child: Container(
                  child: Hero(tag: imagePath, child: Image.asset(imagePath))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 155,
                ),
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(color: kwhite, fontSize: 20),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$$price',
                      style: TextStyle(
                          color: kButtonActiveColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 75,
                    ),
                    Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: kButtonActiveColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                        size: 22,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
