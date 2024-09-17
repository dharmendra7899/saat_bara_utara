import 'package:flutter/material.dart';
import 'package:saat_bara_utara/config/theme/app_palette.dart';

import 'app_text.dart';

showToast(
    {required String message, bool? isSuccess, required BuildContext context}) {
  final snackBar = SnackBar(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)),
    content: appText(
        title: message,
        context: context,
        textAlign: TextAlign.center,
        color: AppPaletteLight.background,
        fontWeight: FontWeight.w400,
        fontSize: 16),
    backgroundColor: isSuccess == true
        ? AppPaletteLight.greenColor
        : AppPaletteLight.primary,
    behavior: SnackBarBehavior.floating,
    margin: const EdgeInsets.all(20),
    elevation: 2,
    duration: const Duration(seconds: 2),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
