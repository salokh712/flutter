import 'package:dio/dio.dart';
import 'package:exam/models/exam_model.dart';
class Cityy {
  static Future<List<City>> getData() async {
    Dio dio = Dio();
    Response response = await dio.get('http://192.168.100.97:3040/travel');
    print(response.data);
    if ( response.statusCode == 200) {
      List<dynamic> data = response.data;

      List<City> model = data.map((v) => City.fromJson(v)).toList();
      return model;
    }
    return [];
  }
}















