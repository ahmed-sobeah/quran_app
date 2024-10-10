import 'package:flutter/material.dart';
import 'package:quran_app/core/colors_manger.dart';

class SebhaButtonWidget extends StatelessWidget {
 SebhaButtonWidget({super.key,required this.tasbehButtonClicked,required this.tasbehLabels, required this.index});
  Function tasbehButtonClicked;
  List <String> tasbehLabels;
  int index;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: ColorsManger.goldTheme)  ,onPressed: () {
      tasbehButtonClicked();
    }, child: Text(textAlign: TextAlign.center,textDirection: TextDirection.rtl,'${tasbehLabels[index]}',style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.white),));
  }
}
