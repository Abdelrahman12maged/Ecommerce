import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:one_plus/Features/onBoardingView/models/onBoardinItemModels.dart';
import 'package:one_plus/Features/onBoardingView/widgets/FloatinActionButton.dart';
import 'package:one_plus/Features/onBoardingView/widgets/Indicator.dart';
import 'package:one_plus/Features/onBoardingView/widgets/PageViewBuilder.dart';
import 'package:one_plus/core/utils/assetsImages.dart';
import 'package:one_plus/generated/l10n.dart';

class onBoardingTabletLayout extends StatelessWidget {
  onBoardingTabletLayout({super.key,required this.items});

     List<onBoardinItemModel> items;

  //var pagecontroller = PageController();
  //bool islaste = false;
  @override
  Widget build(BuildContext context) {
   

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            PageViewBuilder(  //islast: islaste,
                          items: items,
                         // boardcontroller: pagecontroller,
                        ),
           
          ],
        ),
      ),
    );
  }
}
