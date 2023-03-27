import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:rse_test_app/theme.dart';
import 'package:rse_test_app/views/widgets/Beranda/box_janji.dart';
import 'package:rse_test_app/views/widgets/Beranda/header_guest.dart';

class BerandaGuestPage extends StatefulWidget {
  const BerandaGuestPage({Key? key}) : super(key: key);

  @override
  State<BerandaGuestPage> createState() => _BerandaGuestPageState();
}

class _BerandaGuestPageState extends State<BerandaGuestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
            left: screenLRMargin,
            right: screenLRMargin,
            top: screenTopMargin,
            bottom: MediaQuery.of(context).size.height * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
              [HeaderBerandaGuest(), JanjiHariIni()].mapIndexed((index, item) {
            if (index > 0) {
              // memberikan Padding pada item-item kedua dan seterusnya
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: item,
              );
            }
            return item;
          }).toList(),
        ),
      ),
    );
  }
}
