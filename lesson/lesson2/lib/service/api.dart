import 'package:dio/dio.dart';
// import 'package:dio/io.dart';
import 'package:lesson2/model/quran.dart';
import 'package:lesson2/model/vakt_model.dart';

class Apiservice {
  static Future<List<Quran>> getData() async {
    Dio dio = Dio();
    Response response = await dio.get('https://api.alquran.cloud/v1/edition#');
    if ( response.statusCode == 200) {
      List<dynamic> data = response.data['data'];
      List<Quran> models = data.map((v) => Quran.fromJson(v)).toList();
      return models;
    }
    return [];
  }
  static Future<List<NamozModel>> getNamaz(int month,int year) async {
    print(year);
    print(month);
    Dio dio = Dio();
    Response response = await dio.get('https://api.aladhan.com/v1/calendarByCity/$year/$month?city=Tashkent&country=Uzbekistan&method=2');
    print(response.data);
    if ( response.statusCode == 200) {
      List<dynamic> data = response.data['data'];
      List<NamozModel> models = data.map((v) => NamozModel.fromJson(v)).toList();
      return models;
    }
    return [];
  }
}
