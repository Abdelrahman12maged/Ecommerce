import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:one_plus/Features/Auth/data/datasource/remote_data_source.dart';
import 'package:one_plus/Features/Auth/data/repositry/Auth_ImpRepo.dart';
import 'package:one_plus/Features/Auth/domain/usecases/signIn_useCases.dart';
import 'package:one_plus/Features/Auth/domain/usecases/signUp_useCases.dart';
import 'package:one_plus/Features/Auth/presentation/manager/SignUpCubit/signup_cubit.dart';
import 'package:one_plus/Features/Auth/presentation/view/widgets/SignUpLayout.dart';
import 'package:one_plus/Features/Auth/presentation/view/widgets/signup_desktop_layout.dart';
import 'package:one_plus/Features/Home/presentation/view/widgets/home_view_desktop_layout.dart';
import 'package:one_plus/core/databases/api/dio_consumer.dart';
import 'package:one_plus/core/utils/SizieConfig.dart';

import '../../../../core/utils/appRouter.dart';
import '../../../../core/widgets/AdaptiveLayout.dart';
import '../../../../core/widgets/CustomAppBar.dart';
import '../../../../generated/l10n.dart';
import 'widgets/admin_panel_desktop_layout.dart';

class AdminPanelView extends StatelessWidget {
  const AdminPanelView({super.key});

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
        desktopLayout: (context) =>AdminPanelDesktopLayout() ,
        tabletLayout: (context) => AdminPanelDesktopLayout(),
        mobileLayout: (context) =>AdminPanelDesktopLayout(),
      ),
    );
  }
}

