import 'package:flutter/material.dart';
class Profilc extends StatelessWidget {
  final Map<String, dynamic> profile;
  final VoidCallback onTap;

  Profilc({required this.profile, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4.0,
        margin: EdgeInsets.symmetric(vertical: 8.0),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(profile['avatar']),
          ),
          title: Text(profile['name']),
          subtitle: Text('Age: ${profile['age']}'),
        ),
      ),
    );
  }
}