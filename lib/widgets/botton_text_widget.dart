import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottonText extends StatelessWidget {
  final String mainText;
  final String secondText;
  const BottonText({
    Key? key,
    required this.mainText,
    required this.secondText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          style: GoogleFonts.roboto(
            color: Colors.black.withOpacity(.95),
            fontSize: 58,
            fontWeight: FontWeight.w900,
          ),
          children: [
            TextSpan(text: "$mainText \n"),
            TextSpan(
              text: "$secondText",
              style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ]),
    );
  }
}
