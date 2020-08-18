import 'package:UIchallenge3/constant.dart';
import 'package:UIchallenge3/widgets/tab.dart' as tab;
import 'package:flutter/material.dart';

enum TabItems { Vaccine, Senitizer, Mask, Gloves, HandWash }

class CategoryTab extends StatefulWidget {
  @override
  _CategoryTabState createState() => _CategoryTabState();
}

class _CategoryTabState extends State<CategoryTab> {
  TabItems activeTab;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            children: [
              tab.Tab(
                title: 'Vaccine',
                textColor:
                    activeTab == TabItems.Vaccine ? Colors.black : kwhite,
                bgColor: activeTab == TabItems.Vaccine
                    ? Colors.white
                    : kInActiveColor,
                press: () {
                  setState(() {
                    activeTab = TabItems.Vaccine;
                  });
                },
              ),
              SizedBox(
                width: 15,
              ),
              tab.Tab(
                title: 'Senitizer',
                textColor:
                    activeTab == TabItems.Senitizer ? Colors.black : kwhite,
                bgColor: activeTab == TabItems.Senitizer
                    ? Colors.white
                    : kInActiveColor,
                press: () {
                  setState(() {
                    activeTab = TabItems.Senitizer;
                  });
                },
              ),
              SizedBox(
                width: 15,
              ),
              tab.Tab(
                title: 'Mask',
                textColor: activeTab == TabItems.Mask ? Colors.black : kwhite,
                bgColor:
                    activeTab == TabItems.Mask ? Colors.white : kInActiveColor,
                press: () {
                  setState(() {
                    activeTab = TabItems.Mask;
                  });
                },
              ),
              SizedBox(
                width: 15,
              ),
              tab.Tab(
                title: 'Gloves',
                textColor: activeTab == TabItems.Gloves ? Colors.black : kwhite,
                bgColor: activeTab == TabItems.Gloves
                    ? Colors.white
                    : kInActiveColor,
                press: () {
                  setState(() {
                    activeTab = TabItems.Gloves;
                  });
                },
              ),
              SizedBox(
                width: 15,
              ),
              tab.Tab(
                title: 'HandWash',
                textColor:
                    activeTab == TabItems.HandWash ? Colors.black : kwhite,
                bgColor: activeTab == TabItems.HandWash
                    ? Colors.white
                    : kInActiveColor,
                press: () {
                  setState(() {
                    activeTab = TabItems.HandWash;
                  });
                },
              ),
              SizedBox(
                width: 15,
              ),
            ],
          ),
        ));
  }
}
