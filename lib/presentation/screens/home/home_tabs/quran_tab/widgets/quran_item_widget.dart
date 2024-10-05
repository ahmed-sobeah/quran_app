import 'package:flutter/material.dart';
import 'package:quran_app/core/colors_manger.dart';
import 'package:quran_app/core/routes_manger.dart';

import '../quran_tab.dart';

class QuranItemWidget extends StatelessWidget {
  SuraItem suraItem;
  QuranItemWidget({super.key,required this.suraItem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RoutesManger.quranDetailsRoute,arguments: suraItem);

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
        child: IntrinsicHeight(
          child: Row(
            children: [
              Expanded(child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Text(textAlign: TextAlign.center,'${suraItem.versesNumber}',style: Theme.of(context).textTheme.labelSmall,),
              )),
              VerticalDivider(
                color: Theme.of(context).dividerColor,
              ),
              Expanded(child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Text(textAlign: TextAlign.center,suraItem.suraName,style: Theme.of(context).textTheme.labelSmall,),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
