import 'package:flutter/material.dart';
import 'package:lesson2/model/vakt_model.dart';
import 'package:lesson2/service/api.dart';

class NamazPage extends StatefulWidget {
  const NamazPage({super.key});

  @override
  State<NamazPage> createState() => _NamazPageState();
}

class _NamazPageState extends State<NamazPage> {
  int time = 29;
  int month = 11;
  int year = 2023;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Apiservice.getNamaz(month, year),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
              body:  Center(child: CircularProgressIndicator()));
        }
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text(
              "Namaz Times",
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      if (time > 0) {
                        setState(() {
                          time--;
                        });
                      } else {
                        if (month > 1) {
                          setState(() {
                            month--;
                            time = 29;
                          });
                        }
                      }
                      if (month == 1 && time == 0) {
                        setState(() {
                          year--;
                          month = 12;
                          time = 29;
                        });
                      }
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                  Text(snapshot.data?[time].date.readable ?? ""),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (time < snapshot.data!.length - 1) {
                          time++;
                        }else if (month == 12) {
                          setState(() {
                            year++;
                            month = 1;
                            time = 0;
                          });
                        }
                        else {
                          if (month <= 11) {
                            setState(() {
                              month++;
                              time = 0;
                            });
                          }
                        }

                        
                      });
                    },
                    icon: const Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (_, index) {
                  return ListTile(
                    title: Text(
                      "${getNamazNames(index)}: ${getTimingsName(snapshot.data![time].timings, index).toString().split(' ').first}",
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  String getNamazNames(int index) {
    switch (index) {
      case 0:
        return "Fajr";
      case 1:
        return "Sunrise";
      case 2:
        return "Dhuhr";
      case 3:
        return "Asr";
      case 4:
        return "Sunset";
      case 5:
        return "Isha";
      default:
        return "Not found";
    }
  }

  String getTimingsName(Timings timings, int index) {
    switch (index) {
      case 0:
        return timings.fajr;
      case 1:
        return timings.sunrise;
      case 2:
        return timings.dhuhr;
      case 3:
        return timings.asr;
      case 4:
        return timings.sunset;
      case 5:
        return timings.isha;
      default:
        return "Not found";
    }
  }
}
