import 'package:flutter/material.dart';
import 'package:todoapp/core/components/dimens.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  const CustomText(
      {super.key,
      required this.text,
      this.fontSize = AppDimens.defaultFontSize,
      this.color,
      this.fontWeight,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize,
          color: color ?? Colors.black,
          fontWeight: fontWeight),
      textAlign: textAlign,
    );
  }
}
