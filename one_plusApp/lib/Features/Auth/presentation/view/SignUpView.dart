import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/SignUpLayoutsWidgets/SignUpLayout.dart';
import 'package:one_plus/core/utils/SizieConfig.dart';

import '../../../../core/utils/appRouter.dart';
import '../../../../core/widgets/AdaptiveLayout.dart';
import '../../../../core/widgets/CustomAppBar.dart';
import '../../../../generated/l10n.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        textButton: S.of(context).login,
        onTapButton: () {
          GoRouter.of(context).push(AppRouter.kLoginView);
        },
      ),
      body: AdaptiveLayout(
        desktopLayout: (context) => SignUpLayout(
            containerWidth: SizeConfig.width * 0.3,
            paddingcontainerVertical: 20),
        tabletLayout: (context) => SignUpLayout(
            containerWidth: SizeConfig.width * 0.4,
            paddingcontainerVertical: 60),
        mobileLayout: (context) => SignUpLayout(
            containerWidth: SizeConfig.width * 0.6,
            paddingcontainerVertical: 60),
      ),
    );
  }
}
