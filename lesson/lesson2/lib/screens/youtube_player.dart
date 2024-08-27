import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

class YouTubePlayerScreen extends StatefulWidget {
  const YouTubePlayerScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _YouTubePlayerScreenState createState() => _YouTubePlayerScreenState();
}

class _YouTubePlayerScreenState extends State<YouTubePlayerScreen> {
  final TextEditingController _controller = TextEditingController();
  YoutubePlayerController? _youtubePlayerController;
  String? _error;
  bool _isLoading = false;

  void _loadVideo() async {
    setState(() {
      _isLoading = true;
    });

    String videoId = _controller.text.trim();
    String? id = YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=$videoId");

    if (id == null) {
      setState(() {
        _error = "Bunday video topilmadi.";
        _youtubePlayerController = null;
        _isLoading = false;
      });
      return;
    }

   
    final response = await http.get(Uri.parse('https://www.youtube.com/oembed?url=https://www.youtube.com/watch?v=$id&format=json'));

    if (response.statusCode == 200) {
      setState(() {
        _youtubePlayerController = YoutubePlayerController(
          initialVideoId: id,
          flags: const YoutubePlayerFlags(
            autoPlay: true,
            mute: false,
          ),
        );
        _error = null;
      });
    } else {
      setState(() {
        _error = "Bunday video topilmadi.";
        _youtubePlayerController = null;
      });
    }

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('YouTube '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'YouTube Video ID ni kiriting',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: _loadVideo,
                ),
              ),
            ),
            const SizedBox(height: 20),
            if (_isLoading)
              const CircularProgressIndicator()
            else if (_error != null)
              Text(
                _error!,
                style: const TextStyle(color: Colors.red),
              )
            else if (_youtubePlayerController != null)
              Expanded(
                child: YoutubePlayer(
                  controller: _youtubePlayerController!,
                  showVideoProgressIndicator: true,
                  onReady: () {
                    print('tayyor');
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
