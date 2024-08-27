import 'package:flutter/material.dart';
import 'package:lesson2/service/namoz_vaqti.dart';
// import 'package:flutter/widgets.dart';

class NamizVaqti extends StatefulWidget {
  const NamizVaqti({super.key});

  @override
  State<NamizVaqti> createState() => _NamizVaqtiState();
}

class _NamizVaqtiState extends State<NamizVaqti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Namoz Vaqtlari",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 4, 14, 155),
                Color.fromARGB(255, 1, 17, 78),
                Color.fromARGB(255, 2, 20, 34),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: FutureBuilder(
              future: Namoz.getData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                } else if (snapshot.connectionState == ConnectionState.done) {
                  return RefreshIndicator.adaptive(
                    onRefresh: () async {
                      setState(() {});
                    },
                    child: ListView.builder(
                        itemCount: snapshot.data?.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                              "${snapshot.data?[index].asr}",style: TextStyle(color: Colors.white),
                            ),
                            subtitle: Text("${snapshot.data?[index].dhuhr}"),
                          );
                        }),
                  );
                } else {
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                }
              }),
        ));
  }
}
