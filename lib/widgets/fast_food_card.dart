import 'package:flutter/material.dart';

import '../theme.dart';

class FastFoodCard extends StatelessWidget {
  final Color colorCard;
  final String imageUrl;
  final String title;
  final String price;

  FastFoodCard({
    this.colorCard,
    this.imageUrl,
    this.title,
    this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 213,
      width: ((MediaQuery.of(context).size.width - (2 * 16)) / 2) - 8,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorCard,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: headingFive.copyWith(color: inkDarkColor),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: inkWhiteColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Align(
                  child: Text(
                    price,
                    style: paragraphSmall.copyWith(
                      color: inkDarkColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 24.5,
          ),
          Align(
            child: Image.asset(
              'assets/$imageUrl',
              width: 109,
            ),
          )
        ],
      ),
    );
  }
}
