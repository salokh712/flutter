import 'package:flutter/material.dart';
import 'package:lesson_flutter/screens/homelesson.dart';
// import '../../saloh/lib/screens/homepage.dart';

void main(List<String> args) {
  runApp(const MyApp());
  
}
  


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home:const HomePage(),
    );
  }
}



// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: const HomePage(),
//     );
//   }
// }

//  class  MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   String imageUrl = 'https://picsum.photos/200/300';

//    _changeImage() {
//     setState(() {
//       imageUrl = 'https://picsum.photos/200/300?random=${DateTime.now().millisecondsSinceEpoch}';
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Menu Example'),
//         actions: <Widget>[
//           IconButton(
//             icon: const Icon(Icons.menu),
//             onPressed: _changeImage,
//           ),
//         ],
//       ),
//       body: Center(
//         child: Image.network(imageUrl),
//       ),
//     );
//   }
// }
