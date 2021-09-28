import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/home_page.dart';
import 'package:food_delivery_app/pages/track_page.dart';
import 'package:food_delivery_app/theme.dart';

class BottomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      padding: EdgeInsets.symmetric(horizontal: 26),
      decoration: BoxDecoration(
        color: utilityDarkBackgroundColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: utilityDarkBackgroundColor,
            blurRadius: 1,
            spreadRadius: 1,
            offset: Offset(1, 1),
          )
        ],
      ),
      child: Align(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomePage();
                    },
                  ),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/home.png',
                    width: 24,
                    height: 24,
                    color: utilityWarningColor,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Home',
                    style: paragraphMedium.copyWith(color: utilityWarningColor),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TrackPage();
                    },
                  ),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/orders.png',
                    width: 24,
                    height: 24,
                    color: inkWhiteColor,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Orders',
                    style: paragraphMedium.copyWith(color: inkWhiteColor),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/account-user.png',
                  width: 24,
                  height: 24,
                  color: inkWhiteColor,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Profile',
                  style: paragraphMedium.copyWith(color: inkWhiteColor),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
