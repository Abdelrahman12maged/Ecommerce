
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_plus/Features/Auth/presentation/view/LoginView.dart';
import 'package:one_plus/Features/onBoardingView/models/onBoardinItemModels.dart';
import 'package:one_plus/Features/onBoardingView/widgets/onBoardingMobilLayout.dart';
import 'package:one_plus/Features/onBoardingView/widgets/onBoardingTabletLayout.dart';
import 'package:one_plus/core/utils/appRouter.dart';
import 'package:one_plus/core/utils/assetsImages.dart';
import 'package:one_plus/core/widgets/AdaptiveLayout.dart';
import 'package:one_plus/generated/l10n.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

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
    return Scaffold(
   
      body: AdaptiveLayout(
        mobileLayout: (context) =>  onBoardingMobileLayout(items: items),
        tabletLayout: (context) =>  onBoardingTabletLayout(items: items),
        desktopLayout: (context) => LoginView(),
      
    ));
  }
}
