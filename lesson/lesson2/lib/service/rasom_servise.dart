import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:lesson2/model/rassom.dart';

class ArtistService {
  final String apiUrl = "https://picsum.photos/v2/list";

  Future<List<Artist>> fetchArtists(int page, int limit) async {
    final response = await http.get(Uri.parse('$apiUrl?page=$page&limit=$limit'));

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      List<Artist> artists = body.map((dynamic item) => Artist.fromJson(item)).toList();
      return artists;
    } else {
      throw Exception('Failed to load artists');
    }
  }
}
