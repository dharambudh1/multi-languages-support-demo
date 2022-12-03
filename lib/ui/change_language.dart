import 'package:flutter/material.dart';

import '../constant/locale_constant.dart';
import '../languages/languages.dart';
import '../model/language_data.dart';

class ChangeLanguageScreen extends StatefulWidget {
  const ChangeLanguageScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ChangeLanguageScreenState();
}

class ChangeLanguageScreenState extends State<ChangeLanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Languages.of(context).appName),
      ),
      body: SafeArea(
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: LanguageData.languageList().length,
          itemBuilder: (context, index) {
            LanguageData language = LanguageData.languageList()[index];
            return RadioListTile<Locale>(
              title: Text(language.name),
              secondary: Text(language.flag),
              value: Localizations.localeOf(context),
              groupValue: Locale(language.languageCode),
              onChanged: (v) {
                changeLanguage(context, language.languageCode);
                setState(() {});
              },
            );
          },
        ),
      ),
    );
  }
}
