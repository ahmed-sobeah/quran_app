import 'package:flutter/material.dart';
import 'package:quran_app/config/theme/my_theme.dart';
import 'package:quran_app/core/routes_manger.dart';
import 'package:quran_app/presentation/screens/home/home_screen.dart';
import 'package:quran_app/presentation/screens/quran_details_screens/quran_details_screen.dart';
import 'package:quran_app/presentation/screens/splash/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      darkTheme: ThemeData(),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routes: {
        RoutesManger.splashRoute: (_)=> SplashScreen(),
        RoutesManger.homeRoute: (_)=> HomeScreen(),
        RoutesManger.quranDetailsRoute: (_)=> QuranDetailsScreen(),
      },
      initialRoute: RoutesManger.splashRoute,
    );
  }
}