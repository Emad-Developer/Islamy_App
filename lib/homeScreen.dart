import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:practise_fourth_session/myThemeData.dart';
import 'package:practise_fourth_session/tabs/ahadeth.dart';
import 'package:practise_fourth_session/tabs/quran.dart';
import 'package:practise_fourth_session/tabs/radio.dart';
import 'package:practise_fourth_session/tabs/sebha.dart';
import 'package:practise_fourth_session/tabs/settings.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: [
        Image.asset(
          "assets/images/background.png",
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.islami,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabIndex,
            onTap: (value) {
              tabIndex = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/quran.png")),
                  label: AppLocalizations.of(context)!.quram,
                  backgroundColor: MyThemeData.primary),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                  label: AppLocalizations.of(context)!.sebha,
                  backgroundColor: MyThemeData.primary),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/radio.png")),
                  label: AppLocalizations.of(context)!.radio,
                  backgroundColor: MyThemeData.primary),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ahadeeth.png")),
                  label: AppLocalizations.of(context)!.ahadeth,
                  backgroundColor: MyThemeData.primary),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: AppLocalizations.of(context)!.settings,
                  backgroundColor: MyThemeData.primary),
            ],
          ),
          body: tabs[tabIndex],
        ),
      ],
    ));
  }

  List<Widget> tabs = [
    QuranTab(),
    SebhaTab(),
    RadioTab(),
    AhadethTab(),
    Settings()
  ];
}
