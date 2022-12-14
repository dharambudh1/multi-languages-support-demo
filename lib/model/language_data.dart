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
      LanguageData(flag: "๐บ๐ธ", name: "English", languageCode: 'en'),
      LanguageData(flag: "๐ธ๐ฆ", name: "ุงูููุนูุฑูุจููููุฉูโ", languageCode: "ar"),
      LanguageData(flag: "๐ฎ๐ณ", name: "เคนเคฟเคเคฆเฅ", languageCode: 'hi'),
    ];
  }
}
