import 'package:flutter/material.dart';

class AppLocalization {
  final Locale locale;

  AppLocalization(this.locale);

  static AppLocalization? of(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization);
  }
}

class _AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  const _AppLocalizationDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'np'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalization> load(Locale locale) {
    throw UnimplementedError();
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalization> old) {
    throw UnimplementedError();
  }
}
