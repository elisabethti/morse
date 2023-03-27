import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Daftar Warna
const Color backgroundColor = Color(0xffFAFAFA);
const Color blueColor = Color(0xff007DFF);
const Color lightBlueColor = Color(0xff65B0FF);
const Color redColor = Color(0xffE91E63);
const Color darkTextColor = Color(0xff1F2041);
const Color lightTextColor = Color(0xffFFFAFF);
const Color greyTextColor = Color(0xff89979E);
const Color formBackgroundColor = Color(0xffE6EBEF);
const Color blueGreyColor = Color(0xffE8F2FD);
const Color darkBlueGreyTextColor = Color(0xffA0BBD7);
const Color blueShadow = Color(0xffBADBFD);

//Fungsi Konversi PX to DP
double pxToDp(BuildContext context, double px) {
  return px / MediaQuery.of(context).devicePixelRatio;
}

//Fungsi Konversi DP to PX
double dpToPx(BuildContext context, double dp) {
  return dp * MediaQuery.of(context).devicePixelRatio;
}

//Daftar margin dalam PX
double screenLRMargin = 16;
double screenTopMargin = 48;
double xsmallMargin = 4;
double smallMargin = 8;
double defaultMargin = 16;
double largeMargin = 20;
double xlargeMargin = 40;

//TextStyle
TextStyle titleBold27 =
    GoogleFonts.poppins(fontSize: 27, fontWeight: FontWeight.w700, height: 1.1);
TextStyle title27 =
    GoogleFonts.poppins(fontSize: 27, fontWeight: FontWeight.w600, height: 1.1);
TextStyle titleBold21 =
    GoogleFonts.poppins(fontSize: 21, fontWeight: FontWeight.w700);
TextStyle title21 =
    GoogleFonts.poppins(fontSize: 21, fontWeight: FontWeight.w600);
TextStyle textRegular16 =
    GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500);
TextStyle title16 =
    GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600);
TextStyle textMedium14 =
    GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500);
TextStyle textRegular14 =
    GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500);
TextStyle textBold14 =
    GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w700);
TextStyle textRegular12 =
    GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500);
TextStyle titleBold12 =
    GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w700);
TextStyle title12 =
    GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w600);
TextStyle textRegular9 =
    GoogleFonts.poppins(fontSize: 9, fontWeight: FontWeight.w400);
TextStyle textMedium9 =
    GoogleFonts.poppins(fontSize: 9, fontWeight: FontWeight.w500);
TextStyle title9 =
    GoogleFonts.poppins(fontSize: 9, fontWeight: FontWeight.w600);
