import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lenny_delicias/src/widgets/food_category.dart';
import 'package:lenny_delicias/src/widgets/search_field.dart';
import 'widgets/home_top_info.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        children: [
          HomeTopInfo(),
          FoodCategory(),
          SizedBox(height: 10,),
          SearchField(),
        ],
      ),
    );
  }
}
