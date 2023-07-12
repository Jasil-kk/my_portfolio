import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TitleLine extends StatelessWidget {
  const TitleLine({
    super.key,
    required this.titleText
  });

  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1,
            color: const Color(0xffCCCCCC),
          ),
        ),
        Container(
          height: 30,
          width: 1,
          color: const Color(0xffCCCCCC),
        ),
        const SizedBox(
          width: 30,
        ),
        Text(
          titleText,
          style: GoogleFonts.mulish(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: const Color(0xff242F65),
              letterSpacing: 4),
        ),
        const SizedBox(
          width: 30,
        ),
        Container(
          height: 30,
          width: 1,
          color: const Color(0xffCCCCCC),
        ),
        Expanded(
          child: Container(
            height: 1,
            color: const Color(0xffCCCCCC),
          ),
        ),
      ],
    );
  }
}