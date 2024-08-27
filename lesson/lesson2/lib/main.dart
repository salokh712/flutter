import 'package:flutter/material.dart';
import 'package:lesson2/screens/rassom_ui.dart';
// import 'package:lesson2/model/varqt_korsat.dart';
// import 'package:lesson2/screens/chewie.dart';
// import 'package:lesson2/screens/future.dart';
// import 'package:lesson2/screens/homepage.dart';
// import 'package:lesson2/screens/instagram_home_page.dart';
// import 'package:lesson2/screens/instagram_reels.dart';
// import 'package:lesson2/screens/namiz_vaqti.dart';
// import 'package:lesson2/screens/vaqt.dart';
import 'package:lesson2/screens/yandi_vaqt.dart';
// import 'package:lesson2/screens/youtube_player.dart';
// import 'package:video_player/video_player.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import 'package:lesson2/screens/audio_player.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:lesson2/screens/rassom_ui.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: RassomScreens(),
    );
  }
}
// void main() {
//   runApp(const MaterialApp(
//     home: NamozVaqtiScreen(),
//   ));
// }

