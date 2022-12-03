class LanguageData {
  final String flag;
  final String name;
  final String languageCode;

  LanguageData({
    required this.flag,
    required this.name,
    required this.languageCode,
  });

  static List<LanguageData> languageList() {
    return <LanguageData>[
      LanguageData(flag: "🇺🇸", name: "English", languageCode: 'en'),
      LanguageData(flag: "🇸🇦", name: "اَلْعَرَبِيَّةُ‎", languageCode: "ar"),
      LanguageData(flag: "🇮🇳", name: "हिंदी", languageCode: 'hi'),
    ];
  }
}
