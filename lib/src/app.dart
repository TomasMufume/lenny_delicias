import 'package:flutter/material.dart';
import 'screens/main_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Lenny Delícias",
      theme: ThemeData(
          primaryColor: Colors.pink
      ),
      home: MainScreen(),
    );
  }
}
