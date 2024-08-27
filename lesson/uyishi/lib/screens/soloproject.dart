import 'package:flutter/material.dart';

class Xabar extends StatefulWidget {
  const Xabar({super.key});

  @override

  _XabarState createState() => _XabarState();
}

class _XabarState extends State<Xabar> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _messages = [];
  int _messageCount = 0;

  void _sendMessage() {
    if (_controller.text.isEmpty) return;
    setState(() {
      _messages.add(_controller.text);
      _controller.clear();
      _messageCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Xaber jonat"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                bool isRight = index % 2 == 0; 
                return Align(
                  alignment: isRight ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                    color: isRight ? const Color.fromARGB(255, 33, 80, 119) : const Color.fromARGB(255, 36, 26, 26),
                    child: Text(
                      _messages[index],
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'massages yubor',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
