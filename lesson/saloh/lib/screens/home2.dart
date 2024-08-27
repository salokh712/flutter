// import 'package:flutter/material.dart';
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   bool isLoading = false;
//   List<String> currentImages = List.generate(4, (index) => 'https://picsum.photos/200/300?random=${index + DateTime.now().millisecondsSinceEpoch}');

//   void _refreshImages() {
//     setState(() {
//       isLoading = true;
//     });

//     Future.delayed(const Duration(seconds: 3), () {
//       setState(() {
//         currentImages = List.generate(4, (index) => 'https://picsum.photos/200/300?random=${index + DateTime.now().millisecondsSinceEpoch}');
//         isLoading = false;
//       });

//        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                 margin: EdgeInsets.only(
//                   bottom: MediaQuery.of(context).size.height * 0.85,
//                 ),
//                 dismissDirection: DismissDirection.horizontal,
//                 behavior: SnackBarBehavior.floating,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 duration: Duration(seconds: 5),
//                 backgroundColor: Color.fromARGB(255, 255, 251, 6),
//                 content: const Text(
//                   "suratlar alishdi",
//                   style: TextStyle(color: Colors.black, fontSize: 20),
//                 ),
//               ));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('uy ishi 3'),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.refresh),
//             onPressed: _refreshImages,
//           ),
//         ],
//       ),
//       body: isLoading 
//         ? const Center(child:  CircularProgressIndicator())
//         : GridView.builder(
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//             itemCount: 4,
//             itemBuilder: (context, index) {
//               return Image.network(currentImages[index]);
//             },
//           ),
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isLoading = false;
  List<String> currentImages = List.generate(4, (index) => 'https://picsum.photos/200/300?random=${index + DateTime.now().millisecondsSinceEpoch}');

  void _refreshImages() {
    setState(() {
      isLoading = true;
    });

    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        currentImages = List.generate(4, (index) => 'https://picsum.photos/200/300?random=${index + DateTime.now().millisecondsSinceEpoch}');
        isLoading = false;
      });

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.01,
        ),
        dismissDirection: DismissDirection.horizontal,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        duration: Duration(seconds: 3),
        backgroundColor: Color.fromARGB(255, 255, 251, 6),
        content: const Text(
          "Suratlar almashtirildi",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Uy ishi 3'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _refreshImages,
          ),
        ],
      ),
      body: isLoading 
        ? const Center(child: CupertinoActivityIndicator())
        : GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: 4,
            itemBuilder: (context, index) {
              return Image.network(
                currentImages[index],
                width: 1500, 
                height: 300, 
                fit: BoxFit.cover, 
              );
            },
          ),
    );
  }
}
