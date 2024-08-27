class NamozVaqti {
  String? fajir;
  String? sunrise;
  String? dhuhr;
  String? asr;
  String? sunset;
  String? magrib;
  String? isha;
  String?imsak;
  String? midnight;
  String? firstthird;
  String? lastthird;

  NamozVaqti({this.fajir, this.sunrise, this.dhuhr, this.asr, this.sunset, this.magrib, this.isha, this.imsak, this.midnight, this.firstthird, this.lastthird});
  factory NamozVaqti.fromJson(Map<String, dynamic> json) {
    return NamozVaqti(
      fajir: json['Fajr'],
      asr: json['Asr'],
      dhuhr: json['Dhuhr'],
      imsak: json['Imsak'],
      isha: json['Isha'],
      magrib: json['Maghrib'],
      midnight: json['Midnight'],
      sunrise: json['Sunrise'],
      sunset: json['Sunset'],
      firstthird: json['Firstthird'],
      lastthird: json['Lastthird'],
    );
  }
}