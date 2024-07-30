import 'package:flutter/material.dart';
import 'package:one_plus/Features/onBoardingView/widgets/PageViewBuilder.dart';

import '../models/onBoardinItemModels.dart';

class onBoardingMobileLayout extends StatelessWidget {
   onBoardingMobileLayout({super.key,required this.items});
     List<onBoardinItemModel> items;

  @override
  Widget build(BuildContext context) {
    return  Center(
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
    ); ;
  }
}