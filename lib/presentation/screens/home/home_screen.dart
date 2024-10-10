import 'package:flutter/material.dart';
import 'package:quran_app/core/assets_manager.dart';
import 'package:quran_app/core/strings_manger.dart';
import 'package:quran_app/presentation/screens/home/home_tabs/hadith_tab/hadith_tab.dart';
import 'package:quran_app/presentation/screens/home/home_tabs/quran_tab/quran_tab.dart';
import 'package:quran_app/presentation/screens/home/home_tabs/radio_tab/radio_tab.dart';
import 'package:quran_app/presentation/screens/home/home_tabs/sebha_tab/sebha_tab.dart';
import 'package:quran_app/presentation/screens/home/home_tabs/settings_tab/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;

 List<Widget> tabs =[
   QuranTab(),
   HadithTab(),
   SebhaTab(),
   RadioTab(),
   SettingsTab(),
 ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(StringsManger.appTitle),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap:(index){
            selectedIndex=index;
            setState(() {

            });
          } ,
          items: [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AssetsManager.quranIcon)),label: StringsManger.quranLabel),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AssetsManager.hadithIcon)),label: StringsManger.hadithLabel),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AssetsManager.tasbehIcon)),label: StringsManger.tasbihLabel),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AssetsManager.radioIcon)),label: StringsManger.radioLabel),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'settings'),

          ],
        ),
        body: tabs[selectedIndex],
      ),

      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AssetsManager.lightBackGround),
        fit:BoxFit.fill,

      ),
      )
    );

  }
}
