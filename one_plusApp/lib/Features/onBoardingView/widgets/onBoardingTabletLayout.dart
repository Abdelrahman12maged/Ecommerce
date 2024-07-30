import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:one_plus/Features/onBoardingView/models/onBoardinItemModels.dart';
import 'package:one_plus/Features/onBoardingView/widgets/FloatinActionButton.dart';
import 'package:one_plus/Features/onBoardingView/widgets/Indicator.dart';
import 'package:one_plus/Features/onBoardingView/widgets/PageViewBuilder.dart';
import 'package:one_plus/core/utils/assetsImages.dart';
import 'package:one_plus/generated/l10n.dart';

class onBoardingTabletLayout extends StatelessWidget {
  onBoardingTabletLayout({super.key});

  var pagecontroller = PageController();
  bool islaste = false;
  @override
  Widget build(BuildContext context) {
    final List<onBoardinItemModel> items = [
      onBoardinItemModel(
        image: Assets.imagesOnbo1,
        title: S.of(context).title1,
        subtitle: S.of(context).subtitle1,
      ),
      onBoardinItemModel(
        image: Assets.imagesObo2,
        title: S.of(context).title2,
        subtitle: S.of(context).subtitle2,
      ),
      onBoardinItemModel(
        image: Assets.imagesObo3,
        title: S.of(context).title3,
        subtitle: S.of(context).subtitle3,
      ),
    ];

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            PageViewBuilder(  islast: islaste,
                          items: items,
                          boardcontroller: pagecontroller,
                        ),
           
          ],
        ),
      ),
    );
  }
}
