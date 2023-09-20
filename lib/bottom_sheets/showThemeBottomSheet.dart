import 'package:flutter/material.dart';
import 'package:practise_fourth_session/myThemeData.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Light",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: MyThemeData.primary, fontWeight: FontWeight.w700),
              ),
              Icon(
                Icons.done,
                size: 30,
                color: MyThemeData.primary,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Dark", style: Theme.of(context).textTheme.bodyMedium!),
              Icon(
                Icons.square_outlined,
                size: 30,
                color: MyThemeData.blackColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}
