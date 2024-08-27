import 'package:flutter/material.dart';
class ListScreen extends StatelessWidget {
  final List<String> team = List<String>.generate(20, (i) => "Item $i");

  ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Royxat'),
      ),
      body: ListView.builder(
        itemCount: team.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(team[index]),
            onTap: () {
              Navigator.pushNamed(
                context,
                'detail',
                arguments: team[index],
              );
            },
          );
        },
      ),
    );
  }
}