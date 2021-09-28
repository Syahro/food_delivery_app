import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/rate_page.dart';

import '../theme.dart';

class SpecialMenu extends StatelessWidget {
  final String imageUrl;
  final Color backroundColor;
  final String title;
  final String stars;
  final String typeCountry;

  SpecialMenu({
    this.imageUrl,
    this.backroundColor,
    this.title,
    this.stars,
    this.typeCountry,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 236,
      width: 200,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/$imageUrl',
            width: double.infinity,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: headingFive.copyWith(
              color: inkDarkColor,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return RatePage();
                  }));
                },
                child: Icon(
                  Icons.star,
                  color: utilityWarningColor,
                  size: 14,
                ),
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                stars,
                style: paragraphSmallBold.copyWith(
                  color: inkDarkColor,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  color: inkWhiteColor.withOpacity(.8),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                '\$\$\$',
                style: paragraphSmallBold.copyWith(
                  color: inkDarkColor,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            children: [
              Text(
                'Restaurants',
                style: paragraphSmall.copyWith(
                  color: inkDarkColor,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: inkWhiteColor.withOpacity(.8),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                typeCountry,
                style: paragraphSmall.copyWith(
                  color: inkDarkColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
