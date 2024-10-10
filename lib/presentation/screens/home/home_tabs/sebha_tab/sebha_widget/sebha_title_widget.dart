import 'package:flutter/material.dart';
import 'package:quran_app/core/colors_manger.dart';
import 'package:quran_app/core/strings_manger.dart';

class SebhaTitleWidget extends StatelessWidget {
  const SebhaTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:  EdgeInsets.symmetric(horizontal: 4),
        width:  double.infinity,
        decoration:  BoxDecoration(
            border:  Border.symmetric(horizontal: BorderSide(color: ColorsManger.goldTheme, width: 3))
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(textAlign: TextAlign.center,StringsManger.sebhaNameLabel, style: Theme.of(context).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w600),),
        )
    );;
  }
}
