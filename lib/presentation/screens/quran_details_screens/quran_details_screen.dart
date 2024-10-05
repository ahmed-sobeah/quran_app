import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/core/assets_manager.dart';
import 'package:quran_app/presentation/screens/home/home_tabs/quran_tab/quran_tab.dart';
import 'package:quran_app/presentation/screens/quran_details_screens/widgets/sura_verses_widget.dart';

class QuranDetailsScreen extends StatefulWidget {
  QuranDetailsScreen({super.key});

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  List <String> verses=[];

  @override

  Widget build(BuildContext context) {

    SuraItem suraItem = ModalRoute.of(context)?.settings.arguments as SuraItem;
    if(verses.isEmpty)readQuranFile(suraItem.index+1);
    return Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AssetsManager.lightBackGround),
          fit:BoxFit.fill,

        ),
        ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(suraItem.suraName),
        ),
        body: verses.isEmpty ? Center(child: CircularProgressIndicator(),) : ListView.builder(itemBuilder: (context, index) =>SuraVersesWidget(verse: verses[index]),itemCount: verses.length,)
      ),
    );
  }
  void readQuranFile(int index) async{
    String fileContent = await rootBundle.loadString('assets/files/$index.txt');
    verses = fileContent.trim().split('\n');
    setState(() {

    });

  }
}

