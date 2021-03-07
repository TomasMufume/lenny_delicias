import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lenny_delicias/src/data/food_data.dart';
import 'package:lenny_delicias/src/widgets/bought_foods.dart';
import 'package:lenny_delicias/src/widgets/food_category.dart';
import 'package:lenny_delicias/src/widgets/search_field.dart';
import '../widgets/home_top_info.dart';
import '../models/food_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Food> _foods = foods;
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
          SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Mais Populares", style:  TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),
              GestureDetector(
                  onTap: () {},
                  child: Text("Listar tudo",style:  TextStyle( fontSize: 18, fontWeight: FontWeight.bold, color: Colors.pink)))
            ],
          ),
          SizedBox(height: 20),
          Column(
            children: _foods.map(_buildFoodItems).toList(),
          ),

        ],
      ),
    );
  }
  Widget _buildFoodItems(Food food){
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: BoughtFoods(
        id: food.id,
        name: food.name,
        imagePath: food.imagePath,
        category: food.category,
        discount: food.discount,
        price: food.price,
        ratings: food.ratings,

      ),
    );
  }
}
