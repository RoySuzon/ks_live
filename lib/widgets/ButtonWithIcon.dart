import 'package:flutter/material.dart';
import 'BigText.dart';

class ButtonWithIcon extends StatelessWidget {
  final Icon icon;
  final String text;
  Color? color;
  Color? textColor;
  Color? iconColor;
  final Size? size;
  final double? iconSize;
  final FontWeight? fontWeight;
  final GestureTapCallback? onPressed;

  ButtonWithIcon({Key? key,
    required this.text,
    required this.onPressed,
    this.textColor,
    this.iconColor,
    this.iconSize,
    required this.icon,
    this.fontWeight,
    this.color, this.size,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: icon,
      label: BigText(text: text, size: 15, letterSpacing: 0.8, color: textColor, fontWeight: fontWeight,),
      style: ElevatedButton.styleFrom(
        fixedSize: size,
        backgroundColor: color,
        elevation: 5,
        shadowColor: Colors.black,
        //padding: EdgeInsets.only(top: 12, bottom: 12, left: 20, right: 20),
        shape: StadiumBorder(),
      ),

    );
  }
}
