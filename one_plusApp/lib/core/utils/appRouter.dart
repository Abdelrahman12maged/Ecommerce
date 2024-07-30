import 'dart:io';

import 'package:go_router/go_router.dart';
import 'package:one_plus/Features/Auth/presentation/view/LoginView.dart';
import 'package:one_plus/Features/onBoardingView/onBoardingScreen.dart';

abstract class AppRouter {
  static const kLoginView = '/loginview';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) =>  SplashView(),
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
