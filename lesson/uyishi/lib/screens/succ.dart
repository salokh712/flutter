import 'package:flutter/material.dart';
class Succ extends StatelessWidget {
  final bool isLogin;

  const Succ({super.key, required this.isLogin});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(Icons.check_circle, color: Colors.green, size: 100),
              const SizedBox(height: 20),
              Text(
                isLogin ? 'succesflin' : 'Acc succesflin',
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20),
              const Text (
                'salom hush kelibsan endi sen bizni shgirtsan',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                child: const Text('raxmattt!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
