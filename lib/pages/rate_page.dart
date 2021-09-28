import 'package:flutter/material.dart';
import 'package:food_delivery_app/theme.dart';

class RatePage extends StatelessWidget {
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
                    'Rate Your Food',
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
            Padding(
              padding: EdgeInsets.only(top: 60),
              child: ListView(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: inkWhiteColor,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 56,
                        ),
                        Text(
                          'How was your food?',
                          style: headingFour.copyWith(
                            color: inkDarkColor,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Your feedback helps us improve our food and\ndelivery service!',
                          style: paragraphMedium.copyWith(
                            color: inkDarkGreyColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width - (2 * 60),
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          decoration: BoxDecoration(
                            color: inkLightGreyColor,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: inkDarkColor),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.star,
                                color: utilityWarningColor,
                                size: 35,
                              ),
                              Icon(
                                Icons.star,
                                color: utilityWarningColor,
                                size: 35,
                              ),
                              Icon(
                                Icons.star,
                                color: utilityWarningColor,
                                size: 35,
                              ),
                              Icon(
                                Icons.star,
                                color: utilityWarningColor,
                                size: 35,
                              ),
                              Icon(
                                Icons.star,
                                color: utilityWarningColor,
                                size: 35,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Leave your comments here:',
                          style: paragraphMedium.copyWith(
                            color: inkSemiDarkGreyColor,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 240,
                          width: MediaQuery.of(context).size.width - (2 * 24),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: inkSemiDarkGreyColor,
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        Container(
                          height: 50,
                          width: 231,
                          child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Submit',
                              style: componentsLarge.copyWith(
                                color: inkWhiteColor,
                              ),
                            ),
                            color: utilityWarningColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
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
