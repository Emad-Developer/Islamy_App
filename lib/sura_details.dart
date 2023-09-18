import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practise_fourth_session/suraModel.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "SuraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadFile(args.suraIndex);
    }
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
                "سورة ${args.name}",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            body: ListView.builder(
              padding: EdgeInsets.all(8),
              itemBuilder: (context, index) {
                return Directionality(
                    textDirection: TextDirection.rtl,
                    child: Text(
                      "${verses[index]} (${index + 1})",
                      style: TextStyle(height: 2.3),
                    ));
              },
              itemCount: verses.length,
            ),
          ),
        ],
      ),
    );
  }

  void loadFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/$index.txt");
    List<String> suraLines = sura.split("\n");
    verses = suraLines;
    setState(() {});
  }
}
