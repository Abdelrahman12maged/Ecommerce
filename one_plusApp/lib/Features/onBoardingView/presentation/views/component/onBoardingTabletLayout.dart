import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:one_plus/Features/onBoardingView/data/models/onBoardinItemModels.dart';
import 'package:one_plus/Features/onBoardingView/presentation/views/component/FloatinActionButton.dart';
import 'package:one_plus/Features/onBoardingView/presentation/views/component/Indicator.dart';
import 'package:one_plus/Features/onBoardingView/presentation/views/component/PageViewBuilder.dart';
import 'package:one_plus/generated/l10n.dart';

class onBoardingTabletLayout extends StatelessWidget {
  onBoardingTabletLayout({super.key,
  });

  
  @override
  Widget build(BuildContext context) {
   

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: PageViewBuilder(  
                          ),
            ),
          ],
        ),
      ),
    );
  }
}
