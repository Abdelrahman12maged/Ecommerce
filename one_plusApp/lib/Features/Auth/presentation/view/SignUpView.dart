import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:one_plus/Features/Auth/data/datasource/remote_data_source.dart';
import 'package:one_plus/Features/Auth/data/repositry/Auth_ImpRepo.dart';
import 'package:one_plus/Features/Auth/domain/usecases/signIn_useCases.dart';
import 'package:one_plus/Features/Auth/domain/usecases/signUp_useCases.dart';
import 'package:one_plus/Features/Auth/presentation/manager/cubit/user_cubit.dart';
import 'package:one_plus/Features/Auth/presentation/view/component/SignUpLayoutsWidgets/SignUpLayout.dart';
import 'package:one_plus/core/databases/api/dio_consumer.dart';
import 'package:one_plus/core/utils/SizieConfig.dart';

import '../../../../core/utils/appRouter.dart';
import '../../../../core/widgets/AdaptiveLayout.dart';
import '../../../../core/widgets/CustomAppBar.dart';
import '../../../../generated/l10n.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => UserCubit(SignUpUseCase(baseAuthrepo:ImpAuthRepo(AuthRemoteDataSource:  AuthRemoteData(apiservice:DioConsumer(dio: Dio())))),SignInUsecase(baseAuthrepo:ImpAuthRepo(AuthRemoteDataSource:  AuthRemoteData(apiservice:DioConsumer(dio: Dio()))))),
      child: Scaffold(
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
      ),
    );
  }
}
