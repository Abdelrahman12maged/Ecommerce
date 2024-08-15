import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:one_plus/Features/Auth/data/datasource/remote_data_source.dart';
import 'package:one_plus/Features/Auth/data/repositry/Auth_ImpRepo.dart';
import 'package:one_plus/core/databases/api/dio_consumer.dart';
import 'package:one_plus/core/params/params.dart';

import 'package:one_plus/core/utils/appRouter.dart';
import 'package:one_plus/core/utils/global/themes/themeData/themeDataDark.dart';
import 'package:one_plus/core/utils/global/themes/themeData/themeDataLight.dart';
import 'package:one_plus/generated/l10n.dart';
import 'package:device_preview/device_preview.dart';

import 'Features/Auth/domain/usecases/signUp_useCases.dart';

void main() async {
  runApp(DevicePreview(
      availableLocales: [Locale("ar"), Locale("en")],
      enabled: true,
      builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      routerConfig: AppRouter.router,
      //  locale:  Locale("en"),

      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      darkTheme: getThemeDataDark(context),
      theme: getThemeDataLight(context),
      // darkTheme: getThemeDataDark(),
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    );
  }
}
