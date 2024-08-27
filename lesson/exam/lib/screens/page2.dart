import 'package:exam/models/exam_model.dart';
import 'package:flutter/material.dart';
class CityDetailScreen extends StatelessWidget {
  final City city;

  CityDetailScreen({required this.city});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(city.name?? ""),
      ),
      body: Column(
        children: [
          Image.network(city.imageUrl?? "", width: double.infinity, height: 200),
          Text("${city.name}, ${city.country}"),
          Text("Rating: ${city.rating} "),
          Text("Price: \$${city.price}"),
          Text("Hotels: ${city.hotels!.first}"),
          Expanded(
            child: ListView.builder(
              itemCount: city.hotels!.length,
              itemBuilder: (context, index) {
                final hotel = city.hotels! [index];
                return ListTile(
                  title: Text(hotel.name ?? ""),
                  subtitle: Text("Price: \$${hotel.price} - Rating: ${hotel.rating} "),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
