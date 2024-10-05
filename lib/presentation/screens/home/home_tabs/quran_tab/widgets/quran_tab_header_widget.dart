import 'package:flutter/material.dart';
import 'package:quran_app/core/colors_manger.dart';
import 'package:quran_app/core/strings_manger.dart';

class QuranTabHeaderWidget extends StatelessWidget {
  const QuranTabHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(
                  width: 3,
                  color: ColorsManger.goldTheme
              )
          )
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(child: Text(style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,StringsManger.versesNumberLabel)),
            // Container(
            //   color: ColorsManger.goldTheme,
            //   width: 3,
            // ),
            VerticalDivider(
              color: Theme.of(context).dividerColor,
              width: 3,
              thickness: 3,
            ),

            Expanded(child: Text(style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,StringsManger.chapterNameLabel,)),
          ],
        ),
      ),
    );
  }
}
