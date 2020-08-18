import 'package:UIchallenge3/constant.dart';
import 'package:flutter/material.dart';

enum Quantity {
  Fifty,
  Hundred,
  OneFifty,
}

class ProductDetailScreen extends StatefulWidget {
  static const routeName = 'productDetailScreen';

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  bool isFavorite = false;
  Quantity isActive;
  int quantityNum = 1;
  @override
  Widget build(BuildContext context) {
    final prodData =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    return Scaffold(
      backgroundColor: kBackGroundColor,
      //resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Container(
                width: 400,
                height: 280,
                decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
            Positioned(
              left: 30,
              top: 40,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.grey,
                ),
              ),
            ),
            Positioned(
              left: 350,
              top: 37,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                child: isFavorite
                    ? Icon(
                        Icons.favorite,
                        color: Colors.pink,
                      )
                    : Icon(
                        Icons.favorite_border,
                        size: 30,
                        color: Colors.white,
                      ),
              ),
            ),
            Positioned(
              left: 105,
              top: 60,
              child: Container(
                  width: 200,
                  height: 300,
                  child: Hero(
                      tag: prodData['imagePath'],
                      child: Image.asset(prodData['imagePath']))),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 390,
                ),
                SizedBox(
                  width: 400,
                ),
                Text(
                  prodData['title'],
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(color: kwhite, fontSize: 25),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  prodData['subTitle'],
                  style: TextStyle(fontSize: 15, color: Colors.grey[600]),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Product Description',
                    style: TextStyle(color: Colors.grey, fontSize: 17)),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Container(
                        color: Colors.grey,
                        height: 1,
                        width: 80,
                      ),
                      SizedBox(
                        width: 45,
                      ),
                      Text(
                        '\$${prodData['price']}',
                        style: TextStyle(
                            color: kButtonActiveColor,
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 45,
                      ),
                      Container(
                        color: Colors.grey,
                        height: 1,
                        width: 80,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isActive = Quantity.Fifty;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 80,
                          height: 45,
                          decoration: BoxDecoration(
                              color: isActive == Quantity.Fifty
                                  ? kwhite
                                  : Colors.grey[700],
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            '50 ml',
                            style: TextStyle(
                              fontSize: 17,
                              color: isActive == Quantity.Fifty
                                  ? Colors.black
                                  : kwhite,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isActive = Quantity.Hundred;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 80,
                          height: 45,
                          decoration: BoxDecoration(
                              color: isActive == Quantity.Hundred
                                  ? kwhite
                                  : Colors.grey[700],
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            '100 ml',
                            style: TextStyle(
                              fontSize: 17,
                              color: isActive == Quantity.Hundred
                                  ? Colors.black
                                  : kwhite,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isActive = Quantity.OneFifty;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 80,
                          height: 45,
                          decoration: BoxDecoration(
                              color: isActive == Quantity.OneFifty
                                  ? kwhite
                                  : Colors.grey[700],
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            '150 ml',
                            style: TextStyle(
                              fontSize: 17,
                              color: isActive == Quantity.OneFifty
                                  ? Colors.black
                                  : kwhite,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey[700],
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            quantityNum++;
                          });
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: kwhite,
                              borderRadius: BorderRadius.circular(15)),
                          child: Icon(
                            Icons.add,
                            size: 30,
                          ),
                        ),
                      ),
                      //TODO:
                      Text(
                        quantityNum.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .copyWith(fontSize: 28, color: Colors.white),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (quantityNum <= 0) {
                            return;
                          }
                          setState(() {
                            quantityNum = quantityNum - 1;
                          });
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Icon(
                                Icons.minimize,
                                size: 25,
                              ),
                              SizedBox(
                                height: 8,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                      color: kButtonActiveColor,
                      borderRadius: BorderRadius.circular(19)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shopping_basket,
                        color: Colors.black,
                        size: 27,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Add to bucket',
                        style: Theme.of(context).textTheme.headline6.copyWith(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
