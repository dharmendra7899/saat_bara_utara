import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:saat_bara_utara/config/theme/app_palette.dart';


class AppButton extends StatelessWidget {
  final String title;
  final Widget? icon;
  final Function() onPressed;
  final bool isLoading;
  final Color? color;
  final Color? textColor;
  final Color? borderColor;
  final bool? isDisabled;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Widget? widget;
  final double? radius;
  const AppButton(
      {super.key,
      required this.onPressed,
      required this.title,
      this.color,
      this.icon,
      this.textColor,
      this.borderColor,
      this.fontSize = 16,
      this.widget,
      this.fontWeight = FontWeight.w500,
      this.isDisabled = false,
      this.isLoading = false,
      this.radius});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: 43,
      decoration: BoxDecoration(
        border: borderColor != null ? Border.all(color: borderColor!) : null,
        borderRadius: BorderRadius.circular(radius ?? 12),
      ),
      child: Theme(
        data: ThemeData(useMaterial3: false),
        child: ElevatedButton(
          onPressed: isLoading == true || isDisabled == true ? null : onPressed,
          style: ButtonStyle(
              surfaceTintColor: WidgetStatePropertyAll(
                color,
              ),
              backgroundColor: WidgetStatePropertyAll(
                isDisabled == true
                    ? AppPaletteLight.secondaryVariant
                    : color ?? AppPaletteLight.primaryVariant,
              ),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius ?? 12),
                ),
              )),
          child: Center(
              child: isLoading == true
                  ? LoadingAnimationWidget.staggeredDotsWave(
                      color: AppPaletteLight.background,
                      size: 40,
                    )
                  : title.isNotEmpty
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            icon ?? const SizedBox(),
                            Text(
                              " $title",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: fontSize,
                                  color: isDisabled == true
                                      ? AppPaletteLight.secondaryVariant
                                      : textColor ?? AppPaletteLight.background,
                                  fontWeight: fontWeight),
                            ),
                          ],
                        )
                      : widget),
        ),
      ),
    );
  }
}
