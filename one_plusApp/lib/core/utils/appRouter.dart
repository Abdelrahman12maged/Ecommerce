import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:one_plus/Features/Auth/presentation/manager/cubit/user_cubit.dart';
import 'package:one_plus/Features/Auth/presentation/view/LoginView.dart';
import 'package:one_plus/Features/Auth/presentation/view/SignUpView.dart';
import 'package:one_plus/Features/onBoardingView/presentation/views/onBoardingScreen.dart';

abstract class AppRouter {
  static const kLoginView = '/loginview';
  static const kSignUpView = '/signupview';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => OnBoardingView(),
      ),
      GoRoute(
        path: kSignUpView,
        builder: (context, state) => SignUpView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) {
          // int? num = state.extra as int?; // استلام القيمة من الحالة
          return LoginView();
        },
      ),
    ],
  );
}
