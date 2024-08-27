import 'package:flutter/material.dart';
import 'package:lesson2/model/varqt_korsat.dart';
import 'package:lesson2/service/namoz_vaqti.dart';

class NamozVaqtiScreen extends StatelessWidget {
  const NamozVaqtiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Namoz Vaqtlari',
              style: TextStyle(color: Colors.white, fontSize: 20)),
          backgroundColor: const Color.fromARGB(255, 4, 13, 139),
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
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: FutureBuilder<List<NamozVaqti>>(
            future: Namoz.getData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return const Center(child: Text('Xatolik yuz berdi'));
              } else if (snapshot.hasData) {
                NamozVaqti namozVaqti = snapshot.data![0];
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Fajr: ${namozVaqti.fajir}',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 25),
                          ),
                          const SizedBox(
                            width: 160,
                          ),
                          const Icon(Icons.volume_off_outlined,
                              color: Colors.white, size: 30),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text('Sunrise: ${namozVaqti.sunrise}',
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 25)),
                          const SizedBox(
                            width: 117,
                          ),
                          const Icon(Icons.notifications_active,
                              color: Colors.white, size: 30),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text('Dhuhr: ${namozVaqti.dhuhr}',
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 25)),
                          const SizedBox(
                            width: 135,
                          ),
                          const Icon(Icons.volume_off_outlined,
                              color: Colors.white, size: 30),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text('Asr: ${namozVaqti.asr}',
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 25)),
                          const SizedBox(
                            width: 163,
                          ),
                          const Icon(Icons.volume_up_outlined,
                              color: Colors.white, size: 30),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text('Sunset: ${namozVaqti.sunset}',
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 25)),
                          const SizedBox(
                            width: 120,
                          ),
                          const Icon(Icons.notifications,
                              color: Colors.white, size: 30),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text('Maghrib: ${namozVaqti.magrib}',
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 25)),
                          const SizedBox(
                            width: 105,
                          ),
                          const Icon(Icons.notifications_active,
                              color: Colors.white, size: 30),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text('Isha: ${namozVaqti.isha}',
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 25)),
                          const SizedBox(
                            width: 150,
                          ),
                          const Icon(Icons.volume_up_outlined,
                              color: Colors.white, size: 30),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text('Imsak: ${namozVaqti.imsak}',
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 25)),
                          const SizedBox(
                            width: 130,
                          ),
                          const Icon(Icons.volume_off_outlined,
                              color: Colors.white, size: 30),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text('Midnight: ${namozVaqti.midnight}',
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 25)),
                          const SizedBox(
                            width: 100,
                          ),
                          const Icon(Icons.volume_off_outlined,
                              color: Colors.white, size: 30),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text('First Third: ${namozVaqti.firstthird}',
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 25)),
                          const SizedBox(
                            width: 85,
                          ),
                          const Icon(Icons.notifications,
                              color: Colors.white, size: 30),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text('Last Third: ${namozVaqti.lastthird}',
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 25)),
                          const SizedBox(
                            width: 84,
                          ),
                          const Icon(Icons.notifications_off_outlined,
                              color: Colors.white, size: 30),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        children: [
                          SizedBox(width: 90),
                          Image(
                            image: AssetImage("assets/islom.png"),
                            width: 180,
                            height: 180,
                          ),
                        ],
                      ),
                      const Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 60),
                              Text(
                                "Namoz vaqtlari",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                );
              } else {
                return const Center(child: Text('Malumotlar mavjud emas'));
              }
            },
          ),
        ));
  }
}
