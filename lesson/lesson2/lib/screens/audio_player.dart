// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';


// class AudioPlayerExample extends StatefulWidget {
//   @override
//   _AudioPlayerExampleState createState() => _AudioPlayerExampleState();
// }

// class _AudioPlayerExampleState extends State<AudioPlayerExample> {
//   final AudioPlayer _audioPlayer = AudioPlayer();
//   bool _isPlaying = false;

//   void _playPause() async {
//     if (_isPlaying) {
//       await _audioPlayer.pause();
//     } else {
//       await _audioPlayer.play(UrlSource('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3'));
//     }
//     setState(() {
//       _isPlaying = !_isPlaying;
//     });
//   }

//   @override
//   void dispose() {
//     _audioPlayer.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Audio Player Example'),
//       ),
//       body: Center(
//         child: Row(
//           children: [
//             SizedBox(width: 140,),
//             Icon(Icons.comment, color: Colors.black,),
//             SizedBox(width: 10,),
//             Icon(Icons.reset_tv, color: Colors.black,),
//             IconButton(
//           icon: Icon(_isPlaying ? Icons.pause : Icons.play_arrow),
//           iconSize: 64.0,
//           onPressed: _playPause,
//         ),
//             RotatedBox(quarterTurns: 90, child: Icon(Icons.reset_tv, color: Colors.black,)),
//         SizedBox(width: 10,),

//         Icon(Icons.favorite_border, color: Colors.black,),
        
        
//           ],
//         )
//       ),
//     );
//   }
// }
