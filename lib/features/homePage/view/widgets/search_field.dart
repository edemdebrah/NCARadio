import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(48),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade700,
              blurRadius: 10,
              spreadRadius: 1,
              offset: const Offset(2, 2),
              inset: true,
            ),
            const BoxShadow(
              color: Colors.white,
              blurRadius: 10,
              spreadRadius: 1,
              offset: Offset(-2, -2),
              inset: true,
            ),
          ],
        ),
        child: Container(
          margin: const EdgeInsets.all(8),
          //height: 40,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.green[300],
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade700,
                blurRadius: 10,
                spreadRadius: 1,
                offset: const Offset(2, 2),
                inset: true,
              ),
              const BoxShadow(
                color: Colors.white,
                blurRadius: 10,
                spreadRadius: 1,
                offset: Offset(-2, -2),
                inset: true,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              // onChanged: (){},
              // keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(top: 14),
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.green[800],
                  size: 40,
                ),
                hintText: 'Search DAB Channels',
                hintStyle: GoogleFonts.electrolize(
                  color: Colors.black38,
                  fontStyle: FontStyle.italic,
                  fontSize: 22,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
