import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Daftar Warna
const Color backgroundColor = Color(0xffFAFAFA);
const Color blueColor = Color(0xff007DFF);
const Color darkTextColor = Color(0xff1F2041);
const Color lightTextColor = Color(0xffFFFAFF);
const Color greyTextColor = Color(0xff89979E);

//Fungsi Konversi PX to DP
double pxToDp(BuildContext context, double px) {
  return px / MediaQuery.of(context).devicePixelRatio;
}

//Daftar margin dalam PX
double screenLRMargin = 16;
double screenTopMargin = 44;
double smallMargin = 8;
double defaultMargin = 16;
double largeMargin = 20;

//TextStyle
TextStyle title27 =
    GoogleFonts.poppins(fontSize: 27, fontWeight: FontWeight.w600, height: 1.1);
TextStyle title21 =
    GoogleFonts.poppins(fontSize: 21, fontWeight: FontWeight.w600);
TextStyle title16 =
    GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600);
TextStyle textMedium14 =
    GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500);
TextStyle textBold14 =
    GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700);
TextStyle title12 =
    GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w600);
TextStyle title9 =
    GoogleFonts.poppins(fontSize: 9, fontWeight: FontWeight.w600);
