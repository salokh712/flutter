import 'package:flutter/material.dart';
import 'succ.dart';
class Kirish extends StatefulWidget {
  final bool isLogin;

  const Kirish({super.key, required this.isLogin});

  @override
  // ignore: library_private_types_in_public_api
  _LoginFormScreenState createState() => _LoginFormScreenState();
}

class _LoginFormScreenState extends State<Kirish> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(widget.isLogin ? 'Login' : 'Register', style: const TextStyle(fontSize: 24)),
              const SizedBox(height: 20),
              TextField(
                controller: _usernameController,
                decoration: const InputDecoration(labelText: 'isim kirit'),
              ),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: 'parol kirit'),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Succ(isLogin: widget.isLogin),
                    ),
                  );
                },
                child: Text(widget.isLogin ? 'Continue' : 'Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
