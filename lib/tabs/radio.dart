import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/radio_image.png"),
        SizedBox(
          height: 40,
        ),
        Text(
          "إذاعة القرآن الكريم",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: ImageIcon(
                  AssetImage("assets/images/Icon metro-previous.png")),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                  iconColor: MaterialStatePropertyAll(Color(0xffB7935F)),
                  elevation: MaterialStatePropertyAll(0),
                  iconSize: MaterialStatePropertyAll(50)),
              label: Text(""),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: ImageIcon(
                AssetImage("assets/images/Icon awesome-play.png"),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                  iconColor: MaterialStatePropertyAll(Color(0xffB7935F)),
                  elevation: MaterialStatePropertyAll(0),
                  iconSize: MaterialStatePropertyAll(60)),
              label: Text(""),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: ImageIcon(
                AssetImage("assets/images/Icon metro-next.png"),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                iconColor: MaterialStatePropertyAll(Color(0xffB7935F)),
                elevation: MaterialStatePropertyAll(0),
                iconSize: MaterialStatePropertyAll(50),
              ),
              label: Text(""),
            )
          ],
        ),
      ],
    );
  }
}
