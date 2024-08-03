import 'package:flutter/material.dart';
import 'package:one_plus/core/utils/global/Function/getResponsiveText.dart';
import 'package:one_plus/core/utils/global/themes/appColor/appColorLight.dart';

ThemeData getThemeDataLight(BuildContext context) => ThemeData(
  useMaterial3: false,

   
  scaffoldBackgroundColor: AppColorsLight.Scaffoldbackgroundcolor,
  floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: AppColorsLight.floatingbutton,),
  appBarTheme: AppBarTheme( color: AppColorsLight.appBarLigtColor),

  textTheme: TextTheme(
     titleMedium:TextStyle(fontSize: getResponsiveFontSize(context, fontSize: 30), color: Colors.black) , 
     titleSmall: TextStyle(fontSize: getResponsiveFontSize(context, fontSize: 25),color: Colors.black),
   
    // displayMedium: TextStyle(fontSize: 30, color: Colors.black,), 
    // bodyLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
    // bodyMedium: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic, color: Colors.black87),
    // bodySmall: TextStyle(fontSize: 14.0, color: Colors.black54),
    // // Add more text styles as needed
  ),

);


