import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practise_fourth_session/suraModel.dart';
import 'package:practise_fourth_session/sura_details.dart';

class QuranTab extends StatefulWidget {
  static const String routName = "QuranTab";

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  List<int> verses = [];

  List<String> suraName = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    loadFile();

    return Column(
      children: [
        Center(
          child: Image.asset(
            "assets/images/quran_image.png",
          ),
        ),
        verses.isEmpty
            ? CircularProgressIndicator()
            : Expanded(
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Container(
                    padding: EdgeInsets.all(18),
                    child: DataTable2(
                      dividerThickness: 2,
                      dataTextStyle: Theme.of(context).textTheme.bodySmall,
                      headingTextStyle: Theme.of(context).textTheme.bodySmall,
                      columnSpacing: 8,
                      horizontalMargin: 8,
                      columns: [
                        DataColumn2(
                          label: Text(' رقم السورة'),
                          size: ColumnSize.L,
                        ),
                        DataColumn(
                          label: Text(
                            'اسم السورة',
                          ),
                        ),
                        DataColumn2(
                          label: Text('عدد الآيات'),
                          size: ColumnSize.S,
                        ),
                      ],
                      rows: List<DataRow>.generate(
                        114,
                        (index) => DataRow(
                          cells: [
                            DataCell(
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, SuraDetails.routeName,
                                      arguments: SuraModel(
                                          suraName[index], index + 1));
                                },
                                child: Text("${index + 1}"),
                              ),
                            ),
                            DataCell(InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, SuraDetails.routeName,
                                    arguments: SuraModel(
                                        "${suraName[index]}", index + 1));
                              },
                              child: Text(
                                "${suraName[index]}",
                              ),
                            )),
                            DataCell(InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, SuraDetails.routeName,
                                    arguments: SuraModel(
                                        "${suraName[index]}", index + 1));
                              },
                              child: Text(
                                "${verses[index]}", //
                              ),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
      ],
    );
  }

  void loadFile() async {
    for (int i = 1; i <= 114; i++) {
      String sura = await rootBundle.loadString("assets/files/$i.txt");
      List<String> suraLines = sura.split("\n");
      verses.add(suraLines.length);
    }
    setState(() {});
    print(verses);
  }
}
