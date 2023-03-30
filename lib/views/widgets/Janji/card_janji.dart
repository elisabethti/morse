import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import '../../../theme.dart';

class CardJanji extends StatefulWidget {
  const CardJanji({Key? key}) : super(key: key);

  @override
  State<CardJanji> createState() => _CardJanjiState();
}

class _CardJanjiState extends State<CardJanji> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(6)),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                "assets/images/doctor_pic.png",
                width: MediaQuery.of(context).size.width * 0.15,
              ),
              SizedBox(width: smallMargin),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "dr. William Prasetiyo, Sp. N. Fellow Intervensi Nyeri",
                      style: titleBold12.copyWith(color: darkTextColor),
                    ),
                    SizedBox(
                      height: xsmallMargin,
                    ),
                    Text(
                      "Spesialis Kulit Kelamin",
                      style: textMedium9.copyWith(color: darkTextColor),
                    ),
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icons/clock-blue.png',
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  SizedBox(
                    width: xsmallMargin,
                  ),
                  Text(
                    '07.00 - 10.00',
                    style: title9.copyWith(color: darkTextColor),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: smallMargin, vertical: xsmallMargin),
                decoration: BoxDecoration(
                  color: greenColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'Praktek',
                  style: textMedium9.copyWith(color: lightTextColor),
                ),
              )
            ],
          ),
          TextButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(blueColor),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(lightTextColor),
                  fixedSize: MaterialStateProperty.all<Size>(
                      Size(MediaQuery.of(context).size.width, 40))),
              onPressed: () {},
              child: Text(
                'Buat janji',
                style: title9,
              ))
        ].mapIndexed((index, item) {
          if (index.isOdd || index == 0) {
            return Padding(
              padding: EdgeInsets.only(bottom: smallMargin),
              child: item,
            );
          } else {
            return item;
          }
        }).toList(),
      ),
    );
  }
}
