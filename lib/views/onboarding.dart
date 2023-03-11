import 'package:flutter/material.dart';
import 'package:rse_test_app/theme.dart';
import 'package:rse_test_app/views/widgets/primary_button.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth > constraints.maxHeight) {
              // Landscape
              return Container(
                padding: EdgeInsets.only(
                    left: dpToPx(context, screenLRMargin),
                    right: dpToPx(context, screenLRMargin),
                    top: dpToPx(context, screenTopMargin),
                    bottom: MediaQuery.of(context).size.height * 0.05),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                            color: blueColor,
                            borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.15),
                        child: Image.asset(
                          'assets/images/onboarding.png',
                          width: MediaQuery.of(context).size.width *
                              0.4, // ubah sesuai kebutuhan
                          fit: BoxFit.contain, // sesuaikan dengan kebutuhan
                        ),
                      ),
                      SizedBox(width: largeMargin),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Daftar online",
                                    style: title27.copyWith(color: blueColor)),
                                Text("membantu anda",
                                    style:
                                        title27.copyWith(color: darkTextColor)),
                              ],
                            ),
                            SizedBox(height: smallMargin),
                            Text(
                              "Dalam membuat janji dengan dokter anda tanpa harus antri. Datang dan langsung menuju poli yang dituju.",
                              style:
                                  textMedium14.copyWith(color: greyTextColor),
                            ),
                            SizedBox(height: largeMargin),
                            TextButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          blueColor),
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          lightTextColor),
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size(MediaQuery.of(context).size.width,
                                          48))),
                              onPressed: () {
                                // Aksi yang dilakukan ketika tombol ditekan
                              },
                              child: Text('Buat Janji Sekarang',
                                  style: textBold14),
                            )
                          ],
                        ),
                      )
                    ]),
              );
            } else {
              // Portrait
              return Container(
                padding: EdgeInsets.only(
                    left: screenLRMargin,
                    right: screenLRMargin,
                    top: screenTopMargin),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      decoration: BoxDecoration(
                          color: blueColor,
                          borderRadius: BorderRadius.circular(20)),
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.13),
                      child: Image.asset(
                        'assets/images/onboarding.png',
                        width: MediaQuery.of(context)
                            .size
                            .width, // ubah sesuai kebutuhan
                        fit: BoxFit.fitHeight, // sesuaikan dengan kebutuhan
                      ),
                    ),
                    SizedBox(height: largeMargin),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Daftar online",
                                style: title27.copyWith(color: blueColor)),
                            Text("membantu anda",
                                style: title27.copyWith(color: darkTextColor)),
                          ],
                        ),
                        SizedBox(height: smallMargin),
                        Text(
                          "Dalam membuat janji dengan dokter anda tanpa harus antri. Datang dan langsung menuju poli yang dituju.",
                          style: textMedium14.copyWith(color: greyTextColor),
                        )
                      ],
                    ),
                    SizedBox(height: largeMargin),
                    const PrimaryButton('Buat Janji Sekarang', '/login')
                  ],
                ),
              );
            }
          },
        ));
  }
}
