import 'package:flutter/material.dart';
import 'package:saat_bara_utara/config/theme/app_palette.dart';


Text appText(
    {required String title,
    double fontSize = 12,
    int maxLine = 4,
    FontWeight fontWeight = FontWeight.w500,
    Color? color = AppPaletteLight.primaryVariant,
    TextAlign? textAlign,
    TextDecoration? textDecoration,
    Color? decorationColor,
    required BuildContext context,
    TextOverflow? textOverflow}) {
  return Text(title,
      textAlign: textAlign,
      maxLines: maxLine,

      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
          height: 1.2,
          fontFamily: 'Montserrat',
          overflow: textOverflow,
          decoration: textDecoration,
          decorationColor: decorationColor)

      );
}



requiredAppText(
    {required String title,
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w400,
    Color? color,
    TextAlign? textAlign,
    TextDecoration? textDecoration,
    Color? decorationColor,
    TextOverflow? textOverflow}) {
  return RichText(
    text: TextSpan(
        text: title,
        style: TextStyle(
          color: color ?? AppPaletteLight.primaryVariant,
          fontSize: fontSize,
          fontFamily: 'Montserrat',
          fontWeight: fontWeight,
          overflow: textOverflow,
          decoration: textDecoration,
          decorationColor: decorationColor ?? AppPaletteLight.secondaryVariant,
        ),
        children: [
          TextSpan(
            text: ' *',
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: AppPaletteLight.primary,
            ),
          )
        ]),
  );
}
