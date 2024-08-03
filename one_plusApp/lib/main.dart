import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:one_plus/core/utils/SizieConfig.dart';
import 'package:one_plus/core/utils/appRouter.dart';
import 'package:one_plus/core/utils/global/themes/themeData/themeDataDark.dart';
import 'package:one_plus/core/utils/global/themes/themeData/themeDataLight.dart';
import 'package:one_plus/generated/l10n.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    
    DevicePreview(availableLocales: [Locale("ar"),Locale("en")],
    enabled: false,
    builder: (context) => 
    const MyApp()));
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
