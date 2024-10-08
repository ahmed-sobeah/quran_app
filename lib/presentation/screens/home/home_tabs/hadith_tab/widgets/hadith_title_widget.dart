import 'package:flutter/material.dart';
import 'package:quran_app/core/colors_manger.dart';
import 'package:quran_app/core/routes_manger.dart';
import 'package:quran_app/presentation/screens/home/home_tabs/hadith_tab/hadith_tab.dart';

class HadithTitleWidget extends StatelessWidget {
  HadithTitleWidget({super.key,required this.hadith});
  Hadith hadith;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RoutesManger.hadithDetailsRoute,
          arguments: hadith,);
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.symmetric(
                horizontal: BorderSide(
                    width: 3,
                    color: ColorsManger.goldTheme
                )
            )
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(textAlign: TextAlign.center,hadith.title,style: Theme.of(context).textTheme.labelSmall,),
        ),
      ),
    );
  }
}
