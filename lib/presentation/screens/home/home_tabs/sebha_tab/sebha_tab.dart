import 'package:flutter/material.dart';
import 'package:quran_app/core/assets_manager.dart';
import 'package:quran_app/core/colors_manger.dart';
import 'package:quran_app/presentation/screens/home/home_tabs/sebha_tab/sebha_widget/sebha_button_widget.dart';
import 'package:quran_app/presentation/screens/home/home_tabs/sebha_tab/sebha_widget/sebha_icon_animation.dart';
import 'package:quran_app/presentation/screens/home/home_tabs/sebha_tab/sebha_widget/sebha_title_widget.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});


  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List <String> tasbehLabels=['سبحان الله','الحمد لله','الله اكبر','لا إله إلا الله وحده لا شريك له، له الملك، وله الحمد، وهو على كل شيء قدير'];
  int index=0;
  double sebhaBodyTruns=0.0;
  int tasbehCounter=0;
  int changeIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          SebhaIconAnimation(sebhaBodyTruns: sebhaBodyTruns,),
          Row(
            children: [
              Expanded(child: SizedBox(width: 20,))
            ],
          ),
          SebhaTitleWidget(),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              height: 70,
              width: 70,
              decoration: BoxDecoration(color: ColorsManger.goldTheme ,borderRadius: BorderRadius.circular(20),),
              child: Text(textAlign: TextAlign.center,'$tasbehCounter',style: Theme.of(context).textTheme.labelMedium,),
            ),
          ),
          SebhaButtonWidget(tasbehButtonClicked: tasbehButtonClicked, tasbehLabels: tasbehLabels, index: index)

        ],
      ),
    );
  }
  void tasbehButtonClicked(){

    changeIndex++;
    tasbehCounter++;
    sebhaBodyTruns += 0.035;
    if(index==3){
      tasbehCounter=0;
    }else{
      if(tasbehCounter==33){
        tasbehCounter=0;
      }
    }
    if(changeIndex<100){
      if(changeIndex<33){
        index= 0;
      }else if(changeIndex>=33 && changeIndex<66){
        index =1;
      }else if(changeIndex>=66 && changeIndex<99){
        index=2;
      }else if (changeIndex==99){
        index=3;
      }
    }else{
      index= 0;
      changeIndex = 0;
    }
    setState(() {

    });
  }
}