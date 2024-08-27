import 'package:dio/dio.dart';
import 'package:lesson2/model/varqt_korsat.dart';


class Namoz {
  static Future<List<NamozVaqti>> getData() async {
    Dio dio = Dio();
    Response response = await dio.get('https://api.aladhan.com/v1/calendarByCity/2024/7?city=Tashkent&country=Uzbekistan&method=2');
    if ( response.statusCode == 200) {
      List<dynamic> data = response.data['data'];

      List<NamozVaqti> model = data.map((v) => NamozVaqti.fromJson(v["timings"])).toList();
      return model;
    }
    return [];
  }
}