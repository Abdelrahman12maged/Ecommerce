import 'package:flutter/material.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/SignUpLayoutsWidgets/SignUpDeskTopLayout.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/SignUpLayoutsWidgets/SignUpTabletLayout.dart';

import '../../../../core/widgets/AdaptiveLayout.dart';
import '../../../../core/widgets/CustomAppBar.dart';
import 'component/SignUpLayoutsWidgets/SignUpMobileLayout.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: AdaptiveLayout(
        desktopLayout: (context) => const SignUpDesktopLayout(),
        tabletLayout: (context) => const SignUpDesktopLayout (),
        mobileLayout: (context) => const SignUpDesktopLayout (),
      ),
    );
  }
}


