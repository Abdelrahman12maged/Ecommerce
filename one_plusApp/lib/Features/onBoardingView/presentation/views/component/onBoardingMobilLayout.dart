import 'package:flutter/material.dart';
import 'package:one_plus/Features/onBoardingView/presentation/views/component/PageViewBuilder.dart';

import '../../../data/models/onBoardinItemModels.dart';

class onBoardingMobileLayout extends StatelessWidget {
   onBoardingMobileLayout({super.key,
   });

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(child: PageViewBuilder()),
          ],
        ),
      ),
    ); 
  }
}