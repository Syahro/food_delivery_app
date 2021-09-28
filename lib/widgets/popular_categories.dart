import 'package:flutter/material.dart';

import '../theme.dart';

class PopularCategories extends StatelessWidget {
  final String imageUrl;
  final Color colorCategory;

  PopularCategories(
    this.imageUrl,
    this.colorCategory,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: ((MediaQuery.of(context).size.width - (2 * 16)) / 3) - 8,
      decoration: BoxDecoration(
        color: colorCategory,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Align(
        child: Image.asset(
          'assets/$imageUrl',
          width: 26.67,
        ),
      ),
    );
  }
}
