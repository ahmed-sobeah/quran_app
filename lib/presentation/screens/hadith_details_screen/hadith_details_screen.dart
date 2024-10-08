import 'package:flutter/material.dart';
import 'package:quran_app/core/assets_manager.dart';
import 'package:quran_app/core/colors_manger.dart';
import 'package:quran_app/core/strings_manger.dart';
import 'package:quran_app/presentation/screens/home/home_tabs/hadith_tab/hadith_tab.dart';

class HadithDetailsScreen extends StatelessWidget {
  const HadithDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Hadith hadith = ModalRoute.of(context)?.settings.arguments as Hadith;
    
    return Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AssetsManager.lightBackGround),
          fit:BoxFit.fill,

        ),
        ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title:  const Text(StringsManger.appTitle),
        ),
        body: Card(
          color: ColorsManger.goldTheme,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(hadith.title,style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Colors.white),),
                ),
                Container(
                  color: Colors.white,
                  height: 3,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(textAlign: TextAlign.center,hadith.content,style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Colors.white),textDirection: TextDirection.rtl,),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
