import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyles {
  heading(context, {customColor}) {
    return GoogleFonts.rubik(
      fontWeight: FontWeight.w600,
      color: customColor ?? Colors.black,
      fontSize: 20,
    );
  }
}
