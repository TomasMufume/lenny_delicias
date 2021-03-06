import 'package:flutter/material.dart';
import 'homescreen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Lenny Delícias",
      theme: ThemeData(
          primaryColor: Colors.amber
      ),
      home: HomeScreen(),
    );
  }
}
