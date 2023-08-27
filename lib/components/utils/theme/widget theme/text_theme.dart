import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CEppTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    displayLarge: GoogleFonts.aladin(
      color: Color(0xFF1E1E1E), fontSize: 60,
    ),
    displayMedium: GoogleFonts.aladin(
      color: Color(0xFF1E1E1E), fontSize: 26,
    ),
    displaySmall: GoogleFonts.inter(
      color: Color(0xFF1E1E1E), fontSize: 15,
    )
  );
}