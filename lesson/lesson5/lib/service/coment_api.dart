import 'package:dio/dio.dart';

import 'package:lesson5/models/coment_model.dart';
class Cityy {
  static Future<List<Coment>> getData() async {
    Dio dio = Dio();
    Response response = await dio.get('https://jsonplaceholder.typicode.com/comments');
    if ( response.statusCode == 200) {
      List<dynamic> data = response.data;

      List<Coment> model = data.map((v) => Coment.fromJson(v)).toList();
      return model;
    }
    return [];
  }
}