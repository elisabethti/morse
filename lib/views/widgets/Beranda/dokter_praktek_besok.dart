import 'package:flutter/material.dart';
import 'package:rse_test_app/theme.dart';
import 'package:rse_test_app/views/widgets/card_dokter_praktek_besok.dart';

class DokterPraktekBesok extends StatefulWidget {
  const DokterPraktekBesok({Key? key}) : super(key: key);

  @override
  State<DokterPraktekBesok> createState() => _DokterPraktekBesokState();
}

class _DokterPraktekBesokState extends State<DokterPraktekBesok> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Dokter Praktek Besok',
              style: titleBold12.copyWith(color: darkTextColor),
            ),
            GestureDetector(
              onTap: () {},
              child: Text("lihat semua",
                  style: textRegular12.copyWith(
                      decoration: TextDecoration.underline, color: blueColor)),
            ),
          ],
        ),
        SizedBox(
          height: defaultMargin,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.23,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cardDokter.length,
            itemBuilder: (BuildContext context, int index) {
              if (index < cardDokter.length - 1) {
                // Kondisi jika indeks kurang dari jumlah item yang ada di cardDokter
                return Padding(
                  padding: EdgeInsets.only(right: defaultMargin),
                  child: cardDokter[index],
                );
              } else {
                return cardDokter[index];
              }
            },
          ),
        )
      ],
    );
  }
}

List<Widget> cardDokter = [
  const CardDokterPraktekBesok(),
  const CardDokterPraktekBesok(),
  const CardDokterPraktekBesok(),
  const CardDokterPraktekBesok(),
];
