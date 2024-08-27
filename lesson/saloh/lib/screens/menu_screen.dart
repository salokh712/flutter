import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'detailing.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const ProfileItem(
              name: 'salohiddin',
              age: 14,
              imageUrl: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.sanathukukuenstitusu.com%2Fpost%2Fbir-maymun-telif-sahibi-olabilir-mi-hayvan-yapimi-eser-ikilemi&psig=AOvVaw2VHAOs-jIuywuLdTRQ6wT4&ust=1720430110025000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNC77d7LlIcDFQAAAAAdAAAAABAE',
            ),
            ProfileItem(
              name: 'abdulloh',
              age: 23,
              imageUrl: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.sanathukukuenstitusu.com%2Fpost%2Fbir-maymun-telif-sahibi-olabilir-mi-hayvan-yapimi-eser-ikilemi&psig=AOvVaw2VHAOs-jIuywuLdTRQ6wT4&ust=1720430110025000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNC77d7LlIcDFQAAAAAdAAAAABAE',
            ),
            ProfileItem(
              name: 'abduraxmon',
              age: 15,
              imageUrl: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.sanathukukuenstitusu.com%2Fpost%2Fbir-maymun-telif-sahibi-olabilir-mi-hayvan-yapimi-eser-ikilemi&psig=AOvVaw2VHAOs-jIuywuLdTRQ6wT4&ust=1720430110025000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNC77d7LlIcDFQAAAAAdAAAAABAE',
            ),
            ProfileItem(
              name: 'rixsiddin',
              age: 15,
              imageUrl: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.sanathukukuenstitusu.com%2Fpost%2Fbir-maymun-telif-sahibi-olabilir-mi-hayvan-yapimi-eser-ikilemi&psig=AOvVaw2VHAOs-jIuywuLdTRQ6wT4&ust=1720430110025000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNC77d7LlIcDFQAAAAAdAAAAABAE',
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final String name;
  final int age;
  final String imageUrl;

  const ProfileItem({
    required this.name,
    required this.age,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => Center(child: CupertinoActivityIndicator()),
        );
        await Future.delayed(Duration(seconds: 2));
        Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProfileDetailPage(
              name: name,
              age: age,
              imageUrl: imageUrl,
            ),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
          ),
          title: Text(name),
          subtitle: Text('Age: $age'),
        ),
      ),
    );
  }
}
