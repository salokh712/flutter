class Quran {
  String? id;
  String? lang;
  String? name;
  String? enName;
  String? format;
  String? type;
  String? direction;

  Quran({
    this.id,
    this.lang,
    this.name,
    this.enName,
    this.format,
    this.type,
    this.direction,
  });
  factory Quran.fromJson(Map<String, dynamic> json) {
    return Quran(
      id: json['identifier'],
      lang: json['language'],
      name: json['name'],
      enName: json['englishName'],
      format: json['format'],
      type: json['type'],
      direction: json['direction'],
    );
  }
}
