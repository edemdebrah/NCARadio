import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoldText extends StatelessWidget {
  final String textName;
  final double fontSize;

  const BoldText({
    super.key,
    required this.textName,
    this.fontSize = 22,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textName,
      style: GoogleFonts.lato(
        fontSize: fontSize,
        color: Colors.black87,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
