import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';
import '../model/language_data.dart';

const String prefSelectedLanguageCode = "SelectedLanguageCode";

Future<Locale> setLocale(String languageCode) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString(prefSelectedLanguageCode, languageCode);
  return Future.value(_locale(languageCode));
}

Future<Locale> getLocale() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String languageCode = prefs.getString(prefSelectedLanguageCode) ?? "en";
  return Future.value(_locale(languageCode));
}

Locale _locale(String languageCode) {
  return languageCode.isNotEmpty
      ? Locale(languageCode, '')
      : const Locale('en', '');
}

Future<void> changeLanguage(
    BuildContext context, String selectedLanguageCode) async {
  await setLocale(selectedLanguageCode).then((value) {
    MyApp.setLocale(context, value);
  });
  return Future.value();
}

LanguageData findPropertiesSelectedLanguage(BuildContext context) {
  return LanguageData.languageList().firstWhere(
    (e) => e.languageCode == Localizations.localeOf(context).languageCode,
    orElse: () => LanguageData?.languageList().first,
  );
}
