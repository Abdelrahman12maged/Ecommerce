

import 'package:flutter/material.dart';
import 'package:one_plus/Features/onBoardingView/models/onBoardinItemModels.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Indicator extends StatelessWidget {
  const Indicator({
    super.key,
    required this.pagecontroller,
    required this.items,
  });

  final PageController pagecontroller;
  final List<onBoardinItemModel> items;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      effect: ExpandingDotsEffect(dotColor: Colors.grey,dotHeight: 12,dotWidth: 12,expansionFactor: 4.0,spacing: 5.0),
      
      controller: pagecontroller, count: items.length);
  }
}