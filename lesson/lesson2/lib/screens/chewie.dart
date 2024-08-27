import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoTestPage extends StatefulWidget {
  const VideoTestPage({super.key});

  @override
  State<VideoTestPage> createState() => _VideoTestPageState();
}

class _VideoTestPageState extends State<VideoTestPage> {
  VideoPlayerController videoPlayerController = 
      VideoPlayerController.networkUrl(Uri.parse(
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"));
  late ChewieController chewieController;

  @override
  void initState() {
    initVideoController();
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      allowFullScreen: true,
      autoPlay: true,
      showOptions: false,
      looping: true,
    );
    super.initState();
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }

  initVideoController() async {
    await videoPlayerController.initialize().then((e) {
      videoPlayerController.play();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Video Test Page",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: Center(
        child: Chewie(
          controller: chewieController,
        ),
      ),
    );
  }
}