import 'package:diceapp/coffee_prefs.dart';
import 'package:flutter/material.dart';

// widget not contain any state event
class Home extends StatelessWidget {
  const Home({super.key});

  // context = context of environment this widget in
  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    // scaffold is a material design ancestor for fixed app layout using MaterialApp widget
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Coffee Card',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.brown[600],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.brown[200],
            child: const Text('How I like my coffee'),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.brown[100],
            child: const CoffeePrefs(),
          ),
          Expanded(
              child: Image.asset('assets/img/coffee_bg.jpg',
                  fit: BoxFit
                      .fitWidth, // fit width of image to the entire expanded widget width
                  alignment: Alignment
                      .bottomCenter // start the image at the bottom center,
                  ))
        ],
      ),
    );
  }
}
