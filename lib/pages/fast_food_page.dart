import 'package:flutter/material.dart';
import 'package:food_delivery_app/theme.dart';
import 'package:food_delivery_app/widgets/fast_food_card.dart';

class FastFoodpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: utilityDarkBackgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: -68,
            left: -50,
            child: Container(
              height: 375,
              width: 375,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(184),
              ),
            ),
          ),
          ListView(
            padding: EdgeInsets.fromLTRB(16, 60, 16, 0),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.chevron_left,
                      color: inkDarkColor,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Text(
                        'Restaurants',
                        style: paragraphLarge.copyWith(
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
                          color: inkWhiteColor,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Takeaway',
                        style: paragraphLarge.copyWith(color: inkDarkColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Fast Food',
                    style: headingTwo.copyWith(
                      color: inkDarkColor,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Image.asset(
                    'assets/illustration1.png',
                    width: double.infinity,
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FastFoodCard(
                        colorCard: accentOrangeColor,
                        imageUrl: 'pizza1.png',
                        title: 'Pizza',
                        price: '\$6',
                      ),
                      FastFoodCard(
                        colorCard: accentYellowColor,
                        imageUrl: 'taco1.png',
                        title: 'Taco',
                        price: '\$12',
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FastFoodCard(
                        colorCard: accentGreenColor,
                        imageUrl: 'buddies.png',
                        title: 'Chinese',
                        price: '\$9',
                      ),
                      FastFoodCard(
                        colorCard: accentPurpleColor,
                        imageUrl: 'chicken1.png',
                        title: 'Chicken',
                        price: '\$10',
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
