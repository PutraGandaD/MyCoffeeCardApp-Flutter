import 'package:diceapp/home.dart';
import 'package:flutter/material.dart';

void main() {
  // using prebuilt widget, MaterialApp (not custom widget)
  // using const for constant (value not changed after runtime, better performance)
  runApp(
    const MaterialApp(
        // home is default route of this app (displayed first when app started)
        // scaffold is a material design ancestor for fixed app layout using MaterialApp widget
        home: Home()),
  );
}
