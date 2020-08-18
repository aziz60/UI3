import 'package:UIchallenge3/constant.dart';
import 'package:UIchallenge3/widgets/Product_row.dart';
import 'package:UIchallenge3/widgets/bottom_bar.dart';
import 'package:UIchallenge3/widgets/bottom_product_row.dart';
import 'package:UIchallenge3/widgets/category_tab.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      backgroundColor: Color(0xff3c3e46),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff3c3e46),
        leading: Icon(
          Icons.view_headline,
          size: 27,
        ),
        title: Text(
          'Home',
          style: TextStyle(fontSize: 22),
        ),
        titleSpacing: 0,
        actions: [
          Icon(
            Icons.person,
            size: 27,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              color: Color(0xff3c3e46),
              width: double.infinity,
              height: size.height,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 12,
                ),
                CategoryTab(),
                SizedBox(
                  height: 15,
                ),
//Because of SizedBox you image will be overlapped increase the height of above sized.. to know
                ProductRow(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Text(
                    'Sanitization',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: kwhite),
                  ),
                ),
                BottomProductRow(),
              ],
            ),
            // Column(
            //   children: [
            //     SizedBox(
            //       height: 640,
            //     ),
            //     BottomBar(),
            //     SizedBox(
            //       height: 30,
            //     )
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
