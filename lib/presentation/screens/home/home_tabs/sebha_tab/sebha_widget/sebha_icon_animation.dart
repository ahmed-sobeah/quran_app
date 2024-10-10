import 'package:flutter/material.dart';
import 'package:quran_app/core/assets_manager.dart';

class SebhaIconAnimation extends StatelessWidget {
  SebhaIconAnimation({super.key,required this.sebhaBodyTruns});
  double sebhaBodyTruns;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 110),
          child: Image(image: AssetImage(AssetsManager.sebhaHeadLogo)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 80),
          child: AnimatedRotation(turns: sebhaBodyTruns, duration: Duration(milliseconds: 500),child:
          Image(image: AssetImage(AssetsManager.sebhaBodyLogo),),),
        ),
      ],
    );
  }
}
