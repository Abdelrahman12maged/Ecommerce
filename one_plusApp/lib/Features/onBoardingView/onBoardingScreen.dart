
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_plus/Features/Auth/presentation/view/LoginView.dart';
import 'package:one_plus/Features/onBoardingView/widgets/onBoardingMobilLayout.dart';
import 'package:one_plus/Features/onBoardingView/widgets/onBoardingTabletLayout.dart';
import 'package:one_plus/core/utils/appRouter.dart';
import 'package:one_plus/core/widgets/AdaptiveLayout.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body: AdaptiveLayout(
        mobileLayout: (context) => const onBoardingMobileLayout(),
        tabletLayout: (context) =>  onBoardingTabletLayout(),
        desktopLayout: (context) => LoginView(),
      
    ));
  }
}
