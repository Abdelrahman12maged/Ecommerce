import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_plus/Features/Auth/presentation/view/LoginView.dart';
import 'package:one_plus/Features/Auth/presentation/view/SignUpView.dart';
import 'package:one_plus/Features/onBoardingView/data/models/onBoardinItemModels.dart';
import 'package:one_plus/Features/onBoardingView/presentation/views/component/onBoardingMobilLayout.dart';
import 'package:one_plus/Features/onBoardingView/presentation/views/component/onBoardingTabletLayout.dart';
import 'package:one_plus/core/utils/appRouter.dart';
import 'package:one_plus/core/utils/assetsImages.dart';
import 'package:one_plus/core/widgets/AdaptiveLayout.dart';
import 'package:one_plus/generated/l10n.dart';
import 'package:flutter/foundation.dart'; // Import the foundation library

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return SignUpView();
    } else {
      return Scaffold(
          body: AdaptiveLayout(
        mobileLayout: (context) => onBoardingMobileLayout(),
        tabletLayout: (context) => onBoardingTabletLayout(),
        desktopLayout: (context) =>onBoardingTabletLayout(),
      ));
    }
  }
}
