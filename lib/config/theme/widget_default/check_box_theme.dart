part of "../theme.dart";

var _checkBoxTheme = CheckboxThemeData(
  side: const BorderSide(color: AppPaletteLight.primaryVariant, width: 1),
  fillColor: WidgetStateProperty.resolveWith((states) {
    if (!states.contains(WidgetState.selected)) {
      return AppPaletteLight.background;
    }
    return null;
  }),
  checkColor: WidgetStateProperty.resolveWith((states) {
    if (!states.contains(WidgetState.selected)) {
      return AppPaletteLight.background;
    }
    return null;
  }),
  shape: RoundedRectangleBorder(
    side: const BorderSide(color: AppPaletteLight.primaryVariant, width: 1),
    borderRadius: BorderRadius.circular(2.0),
  ),
);
