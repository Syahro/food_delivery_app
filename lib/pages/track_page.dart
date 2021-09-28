import 'package:flutter/material.dart';
import 'package:food_delivery_app/theme.dart';

class TrackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: utilityDarkBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.chevron_left,
                    color: inkWhiteColor,
                  ),
                  Text(
                    'Track Your Food',
                    style: headingFour.copyWith(
                      color: inkWhiteColor,
                    ),
                  ),
                  Icon(
                    Icons.more_vert,
                    color: inkWhiteColor,
                  ),
                ],
              ),
            ),
            ListView(
              padding: EdgeInsets.only(top: 64),
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: inkLightGreyColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(24),
                        ),
                        child: Image.asset(
                          'assets/maps.png',
                          width: double.infinity,
                          height: 517,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: 140,
                        width: double.infinity,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: inkWhiteColor,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(24),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/profile.png',
                                  width: 32,
                                  height: 32,
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Your Driver',
                                      style: paragraphMedium.copyWith(
                                        color: inkDarkColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'Jay Lopez',
                                      style: headingFive.copyWith(
                                        color: inkDarkColor,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: utilityWarningColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Align(
                                    child: Icon(
                                      Icons.call,
                                      color: inkDarkColor,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Order #',
                                      style: paragraphSmall.copyWith(
                                          color: inkDarkColor),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'BLUSH1020',
                                      style: paragraphMediumBold.copyWith(
                                        color: inkDarkColor,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'ETA Delivery',
                                      style: paragraphSmall.copyWith(
                                          color: inkDarkColor),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      '6:00 pm',
                                      style: paragraphMediumBold.copyWith(
                                        color: inkDarkColor,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '',
                                      style: paragraphSmall.copyWith(
                                          color: inkDarkColor),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 8,
                                          width: 8,
                                          margin: EdgeInsets.only(right: 8),
                                          decoration: BoxDecoration(
                                            color: utilitySuccessColor,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                        ),
                                        Text(
                                          'On Time',
                                          style: paragraphMediumBold.copyWith(
                                            color: inkDarkColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
