import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/fast_food_page.dart';
import 'package:food_delivery_app/theme.dart';
import 'package:food_delivery_app/widgets/botom_navbar.dart';
import 'package:food_delivery_app/widgets/popular_categories.dart';
import 'package:food_delivery_app/widgets/special_menu.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: utilityDarkBackgroundColor,
      bottomNavigationBar: BottomNavbar(),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(left: 16),
          children: [
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.asset(
                          'assets/profile.png',
                          width: 32,
                          height: 32,
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Container(
                          height: 40,
                          width: double.infinity,
                          margin: EdgeInsets.only(left: 10),
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                            color: inkLightGreyColor.withOpacity(.3),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: inkWhiteColor.withOpacity(.7)),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: inkWhiteColor.withOpacity(.7),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Dishes, restaurants or cuisines',
                                style: componentsMedium.copyWith(
                                  color: inkWhiteColor.withOpacity(.7),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Popular categories',
                    style: headingFour.copyWith(
                      color: inkWhiteColor,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return FastFoodpage();
                              },
                            ),
                          );
                        },
                        child: PopularCategories(
                          'pizza.png',
                          accentOrangeColor,
                        ),
                      ),
                      PopularCategories(
                        'salad.png',
                        accentYellowColor,
                      ),
                      PopularCategories(
                        'burger.png',
                        accentGreenColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Today’s special menu',
                    style: headingFour.copyWith(
                      color: inkWhiteColor,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SpecialMenu(
                    imageUrl: 'taco.png',
                    backroundColor: accentOrangeColor,
                    title: 'The Taco\nCompany',
                    stars: '4.8',
                    typeCountry: 'Mexican',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  SpecialMenu(
                    imageUrl: 'burger_club.png',
                    backroundColor: accentPurpleColor,
                    title: '\nThe Burger Club',
                    stars: '5.0',
                    typeCountry: 'American',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Featured restaurants',
                    style: headingFour.copyWith(
                      color: inkWhiteColor,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: double.infinity,
                    height: 288,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: accentYellowColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 26,
                        ),
                        Image.asset(
                          'assets/chicken.png',
                          width: double.infinity,
                        ),
                        SizedBox(
                          height: 42.5,
                        ),
                        Text(
                          'Five Guys',
                          style: headingFour.copyWith(
                            color: inkDarkColor,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Mexican ',
                          style: paragraphSmall.copyWith(
                            color: inkDarkColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
