import 'package:flutter/material.dart';
import 'package:lesson2/model/rassom.dart';
import 'package:lesson2/service/rasom_servise.dart';
class RassomScreens extends StatefulWidget {
  const RassomScreens({super.key});

  @override
  _RassomScreensState createState() => _RassomScreensState();
}

class _RassomScreensState extends State<RassomScreens> {
  late Future<List<Artist>> futureArtists;
  final _artistService = ArtistService();
  int _page = 1;
  int _limit = 10;
  bool _isLoading = false;
  List<Artist> _artists = [];

  @override
  void initState() {
    super.initState();
    _loadArtists();
  }

  Future<void> _loadArtists() async {
    setState(() {
      _isLoading = true;
    });
    try {
      final artists = await _artistService.fetchArtists(_page, _limit);
      setState(() {
        _artists.addAll(artists);
        _page++;
      });
    } catch (e) {
      print(e);
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Artists')),
      body: _artists.isEmpty && _isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _artists.length + 1,
              itemBuilder: (context, index) {
                if (index == _artists.length) {
                  if (_isLoading) {
                    return Center(child: CircularProgressIndicator());
                  } else {
                    return TextButton(
                      onPressed: _loadArtists,
                      child: Text('Load more artists'),
                    );
                  }
                }
                final artist = _artists[index];
                return ListTile(
                  leading: Image.network(artist.imageUrl, width: 50, height: 50, fit: BoxFit.cover),
                  title: Text(artist.name),
                );
              },
            ),
    );
  }
}
