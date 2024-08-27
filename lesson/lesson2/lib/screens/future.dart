import 'package:flutter/material.dart';
// import 'package:lesson2/model/quran.dart';
// import 'package:lesson2/service/api.dart';
import 'package:lesson2/service/namoz_vaqti.dart';

class FutureScreens extends StatefulWidget {
  const FutureScreens({super.key});

  @override
  State<FutureScreens> createState() => _FutureScreensState();
}

class _FutureScreensState extends State<FutureScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: Namoz.getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const  Center(
                child:  CircularProgressIndicator.adaptive(),
              );
            } else if (snapshot.connectionState == ConnectionState.done) {

              return RefreshIndicator.adaptive(
                onRefresh: () async{
                  setState(() {
                    
                  });
                }, child: ListView.builder(itemCount: snapshot.data?.length,
                itemBuilder:(context, index) {
                  return ListTile(title:  Text("${snapshot.data?[index].asr}"),
                  subtitle: Text("${snapshot.data?[index].dhuhr}"),);
                  
                }),
              );
            } else {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            }
          }
          ),
    );
  }
}

Future getData({int? index}) async {
  await Future.delayed(const Duration(seconds: 3));
  List<Userlar> users = List.generate(
      index ?? 4,
      (index) => Userlar(
            name: "foydalanuvchi $index",
            role: "foydalanuvchi $index",
            password: "foydalanuvchi $index",
          ));
          return users;
}

class Userlar {
  String? name;
  String? role;
  String? password;

  Userlar({this.name, this.role, this.password});
}
