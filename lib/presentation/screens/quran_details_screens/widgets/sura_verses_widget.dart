import 'package:flutter/material.dart';
import 'package:quran_app/core/colors_manger.dart';

class SuraVersesWidget extends StatelessWidget {
  SuraVersesWidget({super.key,required this.verse});
  String verse;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorsManger.goldTheme,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
      elevation: 12,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 4),
        child: Text(textAlign: TextAlign.center,textDirection: TextDirection.rtl,verse, style:  TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.white),),
      ),
    );
  }
}
