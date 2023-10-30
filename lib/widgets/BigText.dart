import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  final letterSpacing;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final int? maxLines;

  BigText(
      {Key? key,
      required this.text,
      this.size = 0,
      this.overflow = TextOverflow.ellipsis,
      this.letterSpacing,
      this.color,
      this.fontWeight,
      this.textAlign,
      this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      text,
      maxLines: maxLines,
      // softWrap: false,
      overflow: overflow,
      style: GoogleFonts.montserrat(
          letterSpacing: letterSpacing,
          fontSize: size == 0 ? 20 : size,
          color: color,
          fontWeight: fontWeight),
      // style: TextStyle(
      //       letterSpacing: letterSpacing,
      //       fontSize: size==0?20:size,
      //       color: color,
      //       fontWeight: fontWeight,
      // ),
    );
  }
}
