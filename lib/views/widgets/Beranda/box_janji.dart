import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

import '../../../theme.dart';

class JanjiHariIni extends StatefulWidget {
  const JanjiHariIni({Key? key}) : super(key: key);

  @override
  State<JanjiHariIni> createState() => _JanjiHariIniState();
}

class _JanjiHariIniState extends State<JanjiHariIni> {
  bool isEmpty = false;

  @override
  void initState() {
    super.initState();
    initializeDateFormatting('id');
  }

  @override
  Widget build(BuildContext context) {
    return isEmpty ? janjiKosong() : janjiHariIni();
  }

  Widget janjiHariIni() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(defaultMargin),
      decoration: BoxDecoration(
          color: blueGreyColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Janji Hari Ini",
            style: titleBold12.copyWith(color: darkTextColor),
          ),
          SizedBox(
            height: smallMargin,
          ),
          Container(
            padding: EdgeInsets.all(defaultMargin),
            decoration: BoxDecoration(
                color: blueColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: blueShadow,
                    spreadRadius: 0,
                    blurRadius: 0,
                    offset: Offset(6, 6),
                  )
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.asset(
                      "assets/images/doctor_pic.png",
                      width: MediaQuery.of(context).size.width * 0.125,
                    ),
                    SizedBox(width: smallMargin),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "dr. Thianti Styaningrum Sp.KK",
                          style: titleBold12.copyWith(color: lightTextColor),
                        ),
                        SizedBox(
                          height: xsmallMargin,
                        ),
                        Text(
                          "Spesialis Kulit Kelamin",
                          style: textMedium9.copyWith(color: lightTextColor),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: smallMargin,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 12, vertical: smallMargin),
                  decoration: BoxDecoration(
                    color: lightBlueColor,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/date-white.png',
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          SizedBox(
                            width: xsmallMargin,
                          ),
                          Text(
                            DateFormat('EEEE, d MMMM y', 'id')
                                .format(DateTime.now()),
                            style: title9.copyWith(color: lightTextColor),
                          )
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.15,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/clock-white.png',
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          SizedBox(
                            width: xsmallMargin,
                          ),
                          Text(
                            '07.00 - 10.00',
                            style: title9.copyWith(color: lightTextColor),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: defaultMargin,
          ),
          TextButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(blueShadow),
                foregroundColor: MaterialStateProperty.all<Color>(blueColor),
                fixedSize: MaterialStateProperty.all<Size>(
                    Size(MediaQuery.of(context).size.width, 44))),
            onPressed: () {
              Navigator.pushNamed(context, "/janji/all");
            },
            child: Text("lihat semua",
                style: title9.copyWith(
                  decoration: TextDecoration.underline,
                )),
          ),
        ],
      ),
    );
  }

  Widget janjiKosong() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(defaultMargin),
      decoration: BoxDecoration(
          color: blueGreyColor, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          'Belum ada janji',
          style: title12.copyWith(color: darkBlueGreyTextColor),
        ),
      ),
    );
  }
}
