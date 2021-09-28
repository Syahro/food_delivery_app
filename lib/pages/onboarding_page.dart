import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/home_page.dart';

import '../theme.dart';

class Onboardingpaage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: utilityDarkBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 38,
              ),
              Text(
                'Your Favorite Food, Delivered Fast',
                style: headingThree.copyWith(
                  color: inkWhiteColor,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Find the best restaurants in your city and get\nit delivered to your place!',
                style: paragraphMedium.copyWith(
                  color: inkWhiteColor,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 25,
              ),
              Image.asset(
                'assets/illustration.png',
                width: double.infinity,
                height: 386,
              ),
              Spacer(),
              Container(
                height: 56,
                width: MediaQuery.of(context).size.width - (2 * 72),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomePage();
                        },
                      ),
                    );
                  },
                  color: utilityWarningColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Align(
                    child: Text(
                      'Order Now!',
                      style: componentsLarge.copyWith(
                        color: inkDarkColor,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
