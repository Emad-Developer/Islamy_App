import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:practise_fourth_session/myThemeData.dart';
import 'package:practise_fourth_session/providers/myProvider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var langCode = Provider.of<MyProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {
              langCode.changeLanguage("en");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.english,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: langCode.languageCode == "en"
                          ? MyThemeData.primary
                          : MyThemeData.blackColor,
                      fontWeight: FontWeight.w700),
                ),
                langCode.languageCode == "en"
                    ? Icon(
                        Icons.done,
                        size: 30,
                        color: langCode.languageCode == "en"
                            ? MyThemeData.primary
                            : MyThemeData.blackColor,
                      )
                    : Icon(
                        Icons.square_outlined,
                        size: 30,
                      ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              langCode.changeLanguage("ar");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.arabic,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: langCode.languageCode == "ar"
                              ? MyThemeData.primary
                              : MyThemeData.blackColor,
                        )),
                langCode.languageCode == "ar"
                    ? Icon(
                        Icons.done,
                        size: 30,
                        color: langCode.languageCode == "ar"
                            ? MyThemeData.primary
                            : MyThemeData.blackColor,
                      )
                    : Icon(
                        Icons.square_outlined,
                        size: 30,
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
