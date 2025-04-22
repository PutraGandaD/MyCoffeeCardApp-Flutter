import 'package:flutter/material.dart';

// column demo
class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox'),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment
            .stretch, // direction (horizontal) of children in this column
        mainAxisAlignment: MainAxisAlignment
            .center, // direction vertical of children in this column
        children: [
          // children is requiring list of widget
          Container(
            width: 100,
            color: Colors.red,
            child: const Text('One'),
          ),
          Container(
            width: 200,
            color: Colors.green,
            child: const Text('Two'),
          ),
          Container(
            width: 300,
            color: Colors.blue,
            child: const Text('Three'),
          ),
        ],
      ),
    );
  }
}
