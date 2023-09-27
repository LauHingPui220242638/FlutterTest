import 'package:flutter/material.dart';

class ChatBox extends StatefulWidget {
  const ChatBox({Key? key}) : super(key: key);

  @override
  State<ChatBox> createState() => _ChatBoxState();
}

class _ChatBoxState extends State<ChatBox> {
  final List<Map> items = [
    {'user': 'hihi'},
    {'ai': 'i am AI'},
    {'user': 'ask some quest'},
  ];

  @override
  void initState() {
    super.initState();
  }

  void addItemToList() {
    setState(() {
      items.insert(-1, 'Item Extra ${items.length.toString()}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Container(
          height: 50,
          color: Colors.amber,
          child: Center(child: Text('Entry ${items[index]}')),
        );
      },
    );
  }
}
