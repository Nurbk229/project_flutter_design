import 'dart:ffi';

import 'package:assigment_2/favorite_screen.dart';
import 'package:assigment_2/login.dart';
import 'package:assigment_2/profile_screen.dart';
import 'package:assigment_2/search_screen.dart';
import 'package:assigment_2/singup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  var index = 0;

  @override
  Widget build(BuildContext context) {
    Widget child;
    switch (index) {
      case 0:
        child = ProfileScreen();
        break;
      case 1:
        child = SearchScreen();
        break;
      case 2:
        child = FavoriteScreen();
        break;
    }
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (newIndex) => setState(() => index = newIndex),
        items: [
          BottomNavigationBarItem(
              icon: index == 0 ? Icon(Icons.home) : Icon(Icons.home_outlined),
              title: Text("Home")),
          BottomNavigationBarItem(
            icon: index == 1
                ? Icon(Icons.search_sharp)
                : Icon(Icons.search_outlined),
            title: Text("Search"),
          ),
          BottomNavigationBarItem(
              icon: index == 2
                  ? Icon(Icons.favorite)
                  : Icon(Icons.favorite_outline),
              title: Text("Favorite")),
        ],
      ),
    );
  }
}
