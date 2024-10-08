import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/core/assets_manager.dart';
import 'package:quran_app/core/colors_manger.dart';
import 'package:quran_app/core/strings_manger.dart';
import 'package:quran_app/presentation/screens/home/home_tabs/hadith_tab/widgets/hadith_header_widget.dart';
import 'package:quran_app/presentation/screens/home/home_tabs/hadith_tab/widgets/hadith_title_widget.dart';

class HadithTab extends StatefulWidget {
  HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List <Hadith> allHadithList=[];

  @override
  Widget build(BuildContext context) {
    if(allHadithList.isEmpty)
    loadHadithFile();
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(image: AssetImage(AssetsManager.hadithLogo)),
              Row(
                children: [
                  Expanded(child: SizedBox(width: 20,))
                ],
              ),
              const HadithHeaderWidget(),
              Expanded(child: allHadithList.isEmpty ? Center(
                child: CircularProgressIndicator(color: ColorsManger.goldTheme,),
              ):
              ListView.builder(itemBuilder: (context, index) => HadithTitleWidget(hadith: allHadithList[index]),itemCount: allHadithList.length,)
              )

            ]
        )
    );
  }

  void loadHadithFile()async{
    String fileContent = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadithList = fileContent.trim().split('#');
    for(int i=0 ;i <hadithList.length ;i++){
      String hadithItem = hadithList[i];
      List <String>hadithLines = hadithItem.trim().split('\n');
      String hadithTitle = hadithLines[0];
      hadithLines.removeAt(0);
      String hadithContent = hadithLines.join('\n');
      Hadith hadith = Hadith(hadithContent, hadithTitle);
      allHadithList.add(hadith);

    }
    setState(() {

    });


  }
}
class Hadith{
  String title;
  String content;
  Hadith(this.content,this.title){}
}

