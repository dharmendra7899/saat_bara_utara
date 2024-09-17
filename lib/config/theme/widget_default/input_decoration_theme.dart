part of "../theme.dart";

const _inputDecorationTheme = InputDecorationTheme(
  hintStyle:  TextStyle(
    color: AppPaletteLight.secondaryVariant,
  ),
  labelStyle:  TextStyle(
    color: AppPaletteLight.secondaryVariant,
  ),
  floatingLabelStyle:  TextStyle(
    color: AppPaletteLight.primaryVariant,
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide:  BorderSide(
      color: AppPaletteLight.secondaryVariant,
    ),
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide:  BorderSide(
      color: AppPaletteLight.primaryVariant,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide:  BorderSide(
      color: AppPaletteLight.primaryVariant,
    ),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide:  BorderSide(
      color: AppPaletteLight.primary,
    ),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide:  BorderSide(
      color: AppPaletteLight.primary,
    ),
  ),
);
