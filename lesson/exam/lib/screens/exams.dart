import 'package:exam/models/exam_model.dart';
import 'package:exam/screens/page2.dart';
import 'package:exam/service/exam_api.dart';
import 'package:flutter/material.dart';

class CityListScreen extends StatefulWidget {
  const CityListScreen({super.key});

  @override
  _CityListScreenState createState() => _CityListScreenState();
}

class _CityListScreenState extends State<CityListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Where do you want to travel?",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(children: [
            Text("Best Deals", style: TextStyle(color: Colors.black, fontSize: 50, fontWeight: FontWeight.w700),),
            SizedBox(width: 50,),
            FutureBuilder<List<City>>(
            future: Cityy.getData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      final city = snapshot.data![index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CityDetailScreen(city: city),
                            ),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(city.imageUrl ?? "",
                                width: 100, height: 100),
                            SizedBox(height: 10),
                            Text(city.name ?? "", style: TextStyle(fontSize: 18)),
                            Text("${city.country}",
                                style: TextStyle(color: Colors.grey)),
                            Text("${city.price}", style: TextStyle(fontSize: 16)),
                            Text("${city.rating} ",
                                style: TextStyle(color: Colors.orange)),
                          ],
                        ),
                      );
                    },
                  ),
                  
                );
              } else if (snapshot.hasError) {
                return Center(child: Text("${snapshot.error}"));
              }

              return Center(child: CircularProgressIndicator());
            },
          ),
          Column(),
          Row(
            children: [
              SizedBox(width: 110,),
          Text("Bizning otzovlarimiz 15394 ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),),
          Icon(Icons.favorite)

            ],
          )
          ],)
          
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        onTap: (index) {},
      ),
    );
  }
}
