import 'package:flutter/material.dart';
import 'package:practise_fourth_session/hadethModel.dart';
import 'package:practise_fourth_session/myThemeData.dart';

class HadethDetails extends StatefulWidget {
  static const String routeName = "HadethDetails";

  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;

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
                args.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            body: Card(
              elevation: 14,
              margin: EdgeInsets.all(12),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: MyThemeData.primary,
                  )),
              child: ListView.builder(
                padding: EdgeInsets.all(8),
                itemBuilder: (context, index) {
                  return Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                        "${args.content[index]}",
                        style: TextStyle(height: 2.3),
                      ));
                },
                itemCount: args.content.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
