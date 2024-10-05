import 'package:flutter/material.dart';
import 'package:quran_app/core/colors_manger.dart';

class MyTheme{
  static ThemeData lightTheme =ThemeData(
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.w400,color: Colors.black)
      ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      backgroundColor: ColorsManger.goldTheme,
        selectedIconTheme: IconThemeData(
        size: 30,

    ),
      type: BottomNavigationBarType.fixed

    )
  );

}