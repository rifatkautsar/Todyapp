import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class LocalizationConfig {
  static const supportedLocales = [
    Locale('en'),
    Locale('id'),
  ];

  static const path = 'assets/lang';

  static const fallbackLocale = Locale('en');

  static Widget init({required Widget child}) {
    return EasyLocalization(
      supportedLocales: supportedLocales,
      path: path,
      fallbackLocale: fallbackLocale,
      child: child,
    );
  }
}
