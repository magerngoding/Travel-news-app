import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color whiteColor = Color(0xffffffff);
Color lightWhiteColor = Color(0xffeff5f4);
Color lighterWhiteColor = Color(0xfffcfcfc);

Color greyColor = Color(0xff9397a0);
Color lightGreyColor = Color(0xffa7a7a7);

Color blueColor = Color(0xff5474fd);
Color lightBlueColor = Color(0xff83b1ff);
Color lighterBlueColor = Color(0xffc1d4f9);

Color darkBlueColor = Color(0xff19202d);

double kBorderRadius = 16;

final kBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(kBorderRadius),
  borderSide: BorderSide.none,
);

final kPoppinsBold = GoogleFonts.poppins(
  color: darkBlueColor,
  fontWeight: FontWeight.w700,
);

final kPoppinsSemiBold = GoogleFonts.poppins(
  color: darkBlueColor,
  fontWeight: FontWeight.w600,
);

final kPoppinsMedium = GoogleFonts.poppins(
  color: darkBlueColor,
  fontWeight: FontWeight.w500,
);

final kPoppinsRegular = GoogleFonts.poppins(
  color: darkBlueColor,
  fontWeight: FontWeight.w400,
);
