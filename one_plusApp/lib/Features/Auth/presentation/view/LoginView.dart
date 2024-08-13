import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_plus/generated/l10n.dart';

import '../../../../core/utils/SizieConfig.dart';
import '../../../../core/widgets/AdaptiveLayout.dart';
import '../../../../core/widgets/CustomAppBar.dart';
import 'component/SignInLayoutsWidgets/SignInLayout.dart';

class LoginView extends StatelessWidget {
  LoginView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(textButton: S.of(context).sign_up,
        onTapButton: () {
          GoRouter.of(context).pop();
        },
      ),
      body: AdaptiveLayout(
        desktopLayout: (context) => SignInLayout(
            containerWidth: SizeConfig.width * 0.3,
            paddingcontainerVertical: 20),
        tabletLayout: (context) => SignInLayout(
            containerWidth: SizeConfig.width * 0.4,
            paddingcontainerVertical: 60),
        mobileLayout: (context) => SignInLayout(
            containerWidth: SizeConfig.width * 0.6,
            paddingcontainerVertical: 60),
      ),
    );
  }
}
