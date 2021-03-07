import 'package:flutter/material.dart';

class BoughtFoods extends StatefulWidget {
  @override
  _BoughtFoodsState createState() => _BoughtFoodsState();
}

class _BoughtFoodsState extends State<BoughtFoods> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: 340,
          child: Image.asset("assets/images/bolo.jpg",fit: BoxFit.cover,),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: Container(
            height: 60,
            width: 340,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.black, Colors.black12
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter
                )
            ),
          ),
        ),
      ],
    );
  }
}
