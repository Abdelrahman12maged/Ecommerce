import 'package:flutter/material.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/SignUpLayoutsWidgets/SignUpDeskTopLayout.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/SignUpLayoutsWidgets/SignUpTabletLayout.dart';

import '../../../../core/widgets/AdaptiveLayout.dart';
import 'component/SignUpLayoutsWidgets/SignUpMobileLayout.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
      body: AdaptiveLayout(desktopLayout: (context) => SignUpDesktopLayout(),tabletLayout: (context) => SignUpDesktopLayout(),mobileLayout: (context) =>SignUpDesktopLayout() ,),
    ) ;
  }
}

