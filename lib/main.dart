
import 'package:flutter/material.dart';
import 'package:sanbedanpp/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {
      'home': (context) => MyHome(),
    },
  ));
}

