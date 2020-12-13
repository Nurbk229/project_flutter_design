import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'carouse_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  //
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CarouselDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

