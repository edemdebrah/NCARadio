import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LightText extends StatelessWidget {
  final String textName;
  final double fontSize;

  const LightText({
    super.key,
    required this.textName,
    this.fontSize = 18,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textName,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.lato(
        fontSize: fontSize,
        color: Colors.black54,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
