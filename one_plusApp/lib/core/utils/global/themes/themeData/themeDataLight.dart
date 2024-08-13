import 'package:flutter/material.dart';
import 'package:one_plus/core/utils/global/Function/getResponsiveText.dart';
import 'package:one_plus/core/utils/global/themes/appColor/appColorLight.dart';

ThemeData getThemeDataLight(BuildContext context) => ThemeData(
      useMaterial3: false,
      scaffoldBackgroundColor: AppColorsLight.Scaffoldbackgroundcolor,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: AppColorsLight.floatingbutton,
      ),
      appBarTheme: AppBarTheme(
        color: AppColorsLight.Appbarbackgroundcolor,
      ),
      colorScheme: ColorScheme.light(
          brightness: Brightness.light, background: Colors.white),
      iconTheme: IconThemeData(color: const Color.fromARGB(255, 241, 233, 233)),
      textTheme: TextTheme(
        displayMedium: TextStyle(
            fontSize: getResponsiveFontSize(context, fontSize: 20),
            color: Colors.white),
        titleMedium: TextStyle(
            fontSize: getResponsiveFontSize(context, fontSize: 30),
            color: Colors.black),
        titleSmall: TextStyle(
            fontSize: getResponsiveFontSize(context, fontSize: 25),
            color: Colors.black),

        // displayMedium: TextStyle(fontSize: 30, color: Colors.black,),
        bodyLarge: TextStyle(
            fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
        bodyMedium: TextStyle(
            fontSize: getResponsiveFontSize(context, fontSize: 18),
            color: Colors.black),
        //no change in color with dark and lighy always black
        bodySmall: TextStyle(
            fontSize: getResponsiveFontSize(context, fontSize: 12),
            color: Colors.black),
        // // Add more text styles as needed
      ),
    );
