import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class InstagramHome extends StatelessWidget {
  final List<String> videoIds = [
    "lXZzRJHd5ME",
    "A3X1Aah8VTA",
    "BHfMnYWeN0E",
    "iPfk66EV95M"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram home"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: videoIds.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  children: [
                    Text(
                      'foysalanuvchi $index',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              YoutubePlayer(
                controller: YoutubePlayerController(
                  initialVideoId: videoIds[index],
                  flags: const YoutubePlayerFlags(
                    autoPlay: false,
                    mute: false,
                  ),
                ),
                showVideoProgressIndicator: true,
              ),
              Row(
                children: [
                 
                  Icon(Icons.favorite),
                  SizedBox(width: 10),
                  Icon(Icons.comment),
                  SizedBox(width: 10),
                  Icon(Icons.send),
                  SizedBox(width: 500),
                  
                ],
              ),
              Column(
                children: [
                   Text(
                    ' $index kuzatuv ',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
