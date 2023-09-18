import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practise_fourth_session/hadethModel.dart';
import 'package:practise_fourth_session/myThemeData.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    loadAhadethFiles();
    return Column(
      children: [
        Image.asset(
          "assets/images/ahadeth_image.png",
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        Divider(
          color: MyThemeData.primary,
          thickness: 3,
        ),
        Text(
          "الأحاديث",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Divider(
          color: MyThemeData.primary,
          thickness: 3,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "HadethDetails",
                        arguments: HadethModel(allAhadeth[index].title,
                            allAhadeth[index].content));
                  },
                  child: Text(
                    allAhadeth[index].title,
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            },
            itemCount: allAhadeth.length,
          ),
        ),
      ],
    );
  }

  loadAhadethFiles() async {
    rootBundle.loadString("assets/files/ahadeth.txt").then((ahadeth) {
      List<String> ahadethList = ahadeth.split("#");
      for (var i = 0; i < ahadethList.length; i++) {
        String hadethOne = ahadethList[i];
        List<String> hadethOneLine = hadethOne.trim().split("\n");
        String title = hadethOneLine[0];
        hadethOneLine.removeAt(0);
        List<String> content = hadethOneLine;
        HadethModel hadethModel = HadethModel(title, content);
        allAhadeth.add(hadethModel);
        setState(() {});
      }
    }).catchError((e) {
      print(e.toString());
    });
  }
}
