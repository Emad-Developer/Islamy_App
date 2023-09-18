import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  int index = 0;

  List<String> tasbeeh = [
    "سبحان الله",
    "الحمد لله",
    "الله أكبر",
    "لا حول ولا قوة إلا بالله"
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(alignment: Alignment.center, children: [
            Image.asset(
              "assets/images/sebha_pic.png",
            ),
            Container(
              margin: EdgeInsets.only(top: 80),
              child: ElevatedButton(
                onPressed: () {
                  counter++;
                  if (counter > 33) {
                    for (int i = 0; i < 3; i++) {
                      counter = 0;
                    }
                    index++;
                    if (index == tasbeeh.length) {
                      index = 0;
                    }
                    setState(() {});
                  }
                  setState(() {});
                },
                child: Icon(Icons.add),
                style: ButtonStyle(
                  iconSize: MaterialStatePropertyAll(150),
                  iconColor: MaterialStatePropertyAll(Colors.transparent),
                  backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                  elevation: MaterialStatePropertyAll(0),
                ),
              ),
            ),
          ]),
          Text(
            "عدد التسبيحات",
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          Container(
            height: 80,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xffB7935F),
            ),
            child: Center(
              child: Text(
                "$counter",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
          Container(
            height: 60,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xffB7935F),
            ),
            child: Center(
              child: Text(
                "${tasbeeh[index]}",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
