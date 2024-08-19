import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:one_plus/Features/Auth/domain/usecases/signIn_useCases.dart';
import 'package:one_plus/Features/Auth/presentation/manager/SignInCubit/signInCubti.dart';
import 'package:one_plus/generated/l10n.dart';

import '../../../../core/databases/api/dio_consumer.dart';
import '../../../../core/utils/SizieConfig.dart';
import '../../../../core/widgets/AdaptiveLayout.dart';
import '../../../../core/widgets/CustomAppBar.dart';
import '../../data/datasource/remote_data_source.dart';
import '../../data/repositry/Auth_ImpRepo.dart';
import 'widgets/SignInLayout.dart';

class LoginView extends StatelessWidget {
  LoginView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => SignInCubit( SignInUsecase(
              baseAuthrepo: ImpAuthRepo(
                  AuthRemoteDataSource:
                      AuthRemoteData(apiservice: DioConsumer(dio: Dio()))))),
      child: Scaffold(
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
      ),
    );
  }
}
