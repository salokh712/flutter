import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class InstagramReels extends StatefulWidget {
  const InstagramReels({super.key});

  @override
  State<InstagramReels> createState() => _InstagramReelsState();
}

class _InstagramReelsState extends State<InstagramReels> {
  List _ids = ["lXZzRJHd5ME", "A3X1Aah8VTA", "BHfMnYWeN0E", "iPfk66EV95M"];
  late List<YoutubePlayerController> controllers;
  @override
  void initState() {
    controllers = List.generate(
      _ids.length,
      (index) => YoutubePlayerController(
        initialVideoId: _ids[index],
        flags: const YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
          loop: true,
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: _ids.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (_, __) {
        return YoutubePlayer(
          controller: controllers[__],
        );
      },
    );
  }
}
