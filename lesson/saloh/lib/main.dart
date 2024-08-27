// // import 'package:flutter/material.dart';
// // // import 'package:flutter/scheduler.dart';
// // import 'package:saloh/screens/home2.dart';

// // void main() {
// //   runApp(MyApp()); 
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: MyHomePage(),
// //     );
// //   }
// // }

// // class MyHomePage extends StatefulWidget {
// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }

// // class _MyHomePageState extends State<MyHomePage> {
// //   List<Alignment> alignments = [
// //     Alignment.topLeft,
// //     Alignment.topRight,
// //     Alignment.bottomLeft,
// //     Alignment.bottomRight
// //   ];
// //   List<Color> colors = [Colors.black, Colors.green, Colors.yellow, Colors.blue];

// //   void swapAlignments() {
// //     setState(() {
// //       alignments.shuffle();
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Saloh'),
// //         actions: [
// //           IconButton(
// //             icon: const Icon(Icons.menu),
// //             onPressed: swapAlignments,
// //           ),
// //         ],
// //       ),
// //       body: Stack(
// //         children: [
// //           for (int i = 0; i < alignments.length; i++)
// //             Align(
// //               alignment: alignments[i],
// //               child: Container(
// //                 decoration: BoxDecoration(
// //                   gradient: LinearGradient(
// //                     begin: Alignment.topLeft,
// //                     end: Alignment.bottomRight,
// //                     colors: [
// //                       colors[i],
// //                       Colors.white,
// //                     ],
// //                   ),
// //                 ),
// //                 width: MediaQuery.of(context).size.width / 2,
// //                 height: MediaQuery.of(context).size.height / 2,
// //               ),
// //             ),
// //         ],
// //       ),
// //     );
// //   }
// // }


// // import 'package:flutter/material.dart';
// // import 'package:saloh/screens/profil.dart';
// // import 'screens/menu_screen.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Profile App',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //       ),
// //       home: MainScreen(),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ProfilesPage(),
//     );
//   }
// }

// class ProfilesPage extends StatelessWidget {
//   final List<Map<String, dynamic>> profiles = [
//     {
//       'avatar': 'assets/avatar1.png',
//       'name': 'Alice',
//       'age': 25,
//     },
//     {
//       'avatar': 'assets/avatar2.png',
//       'name': 'Bob',
//       'age': 30,
//     },
//     {
//       'avatar': 'assets/avatar3.png',
//       'name': 'Charlie',
//       'age': 35,
//     },
//     {
//       'avatar': 'assets/avatar4.png',
//       'name': 'Diana',
//       'age': 28,
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profiles'),
//       ),
//       body: GridView.builder(
//         padding: const EdgeInsets.all(16.0),
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 16.0,
//           mainAxisSpacing: 16.0,
//         ),
//         itemCount: profiles.length,
//         itemBuilder: (context, index) {
//           return ProfileCard(
//             profile: profiles[index],
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => ProfileDetailPage(
//                     profile: profiles[index],
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class ProfileCard extends StatelessWidget {
//   final Map<String, dynamic> profile;
//   final VoidCallback onTap;

//   ProfileCard({required this.profile, required this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Card(
//         elevation: 4.0,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CircleAvatar(
//               backgroundImage: AssetImage(profile['avatar']),
//               radius: 40.0,
//             ),
//             SizedBox(height: 8.0),
//             Text(
//               profile['name'],
//               style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 4.0),
//             Text(
//               '${profile['age']} years old',
//               style: TextStyle(fontSize: 14.0),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

