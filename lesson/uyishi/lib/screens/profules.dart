import 'package:flutter/material.dart';
import 'package:uyishi/screens/dateiling.dart';
import 'package:uyishi/screens/profilc.dart';
class ProfilesPage extends StatelessWidget {
  final List<Map<String, dynamic>> profiles = [
    {
      'avatar': 'assets/avatar1.png',
      'name': 'salohiddin',
      'age': 14,
    },
    {
      'avatar': 'assets/avatar2.png',
      'name': 'abdulloh',
      'age': 23,
    },
    {
      'avatar': 'assets/avatar3.png',
      'name': 'abduraxmon',
      'age': 15,
    },
    {
      'avatar': 'assets/avatar4.png',
      'name': 'rixsiddin',
      'age': 15,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profiles'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: profiles.length,
        itemBuilder: (context, index) {
          return Profilc(
            profile: profiles[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileDetailPage(
                    profile: profiles[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}


