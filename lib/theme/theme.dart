import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color kPrimaryColor = const Color(0xff3FDEAE);
Color kSecondaryColor = const Color(0xffDFE4F3);
Color kWhiteColor = const Color(0xffF1F5FF);

Color kBlackColor = const Color(0xff191B35);
Color kBlackSecondaryColor = const Color(0xff61697D);
Color kRedColor = const Color(0xffE54068);
Color kGreenColor = const Color(0xff1CD69D);

TextStyle blackStyleText = GoogleFonts.montserrat(
  color: kBlackColor,
);
TextStyle whiteStyleText = GoogleFonts.montserrat(
  color: kWhiteColor,
);
TextStyle greyStyleText = GoogleFonts.montserrat(
  color: kBlackSecondaryColor,
);
TextStyle greenStyleText = GoogleFonts.montserrat(
  color: kGreenColor,
);
TextStyle redStyleText = GoogleFonts.montserrat(
  color: kRedColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;