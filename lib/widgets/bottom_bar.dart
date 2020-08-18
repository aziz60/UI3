import 'package:UIchallenge3/constant.dart';
import 'package:flutter/material.dart';

enum BC { Home, Heart, Search, Cart }

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  BC isActive;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 7),
        decoration: BoxDecoration(
            color: Colors.grey[700].withOpacity(0.7),
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isActive = BC.Home;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: isActive == BC.Home
                          ? kButtonActiveColor
                          : Colors.grey[300],
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.home,
                    color: isActive == BC.Home ? Colors.white : Colors.black,
                    size: 32,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isActive = BC.Heart;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: isActive == BC.Heart
                          ? kButtonActiveColor
                          : Colors.grey[300],
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.favorite,
                    color: isActive == BC.Heart ? Colors.white : Colors.black,
                    size: 32,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isActive = BC.Search;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: isActive == BC.Search
                          ? kButtonActiveColor
                          : Colors.grey[300],
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.search,
                    color: isActive == BC.Search ? Colors.white : Colors.black,
                    size: 32,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isActive = BC.Cart;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: isActive == BC.Cart
                          ? kButtonActiveColor
                          : Colors.grey[300],
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.shopping_basket,
                    color: isActive == BC.Cart ? Colors.white : Colors.black,
                    size: 32,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
