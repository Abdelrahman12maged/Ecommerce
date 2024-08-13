import 'package:flutter/material.dart';
import 'package:one_plus/core/utils/global/Function/getResponsiveText.dart';
import 'package:one_plus/core/utils/global/themes/appColor/appColorDark.dart';
import 'package:one_plus/core/utils/global/themes/appColor/appColorLight.dart';

ThemeData getThemeDataDark(BuildContext context) => ThemeData(
      useMaterial3: false,
      scaffoldBackgroundColor: AppColorsDark.Scaffoldbackgroundcolor,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: AppColorsLight.floatingbutton,
      ),
      appBarTheme: AppBarTheme(color: AppColorsDark.Appbarbackgroundcolor),
      colorScheme: ColorScheme.light(
          brightness: Brightness.dark, background: Colors.black38),
      iconTheme: IconThemeData(color: Colors.white),
      textTheme: TextTheme(
        displayMedium: TextStyle(
            fontSize: getResponsiveFontSize(context, fontSize: 20),
            color: Colors.white),

        titleMedium: TextStyle(
            fontSize: getResponsiveFontSize(context, fontSize: 30),
            color: Colors.white),
        titleSmall: TextStyle(
            fontSize: getResponsiveFontSize(context, fontSize: 25),
            color: Colors.white),

        bodyMedium: TextStyle(
            fontSize: getResponsiveFontSize(context, fontSize: 18),
            color: Colors.white),
        //no change in color with dark and lighy always black
        bodySmall: TextStyle(
            fontSize: getResponsiveFontSize(context, fontSize: 12),
            color: Colors.black),
        // displayMedium: TextStyle(fontSize: 30, color: Colors.black,),
        // bodyLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
        // bodyMedium: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic, color: Colors.black87),
        // bodySmall: TextStyle(fontSize: 14.0, color: Colors.black54),
        // // Add more text styles as needed
      ),
    );
