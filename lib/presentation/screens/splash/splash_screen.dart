import 'package:flutter/material.dart';
import 'package:quran_app/core/assets_manager.dart';
import 'package:quran_app/core/routes_manger.dart';

class SplashScreen extends StatelessWidget {

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2),() {
      Navigator.pushReplacementNamed(context, RoutesManger.homeRoute);
    },);

    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AssetsManager.lightSplash),fit: BoxFit.fill,),
      ),
    );
  }
}
