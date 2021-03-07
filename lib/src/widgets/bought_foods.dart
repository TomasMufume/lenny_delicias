import 'package:flutter/material.dart';

class BoughtFoods extends StatefulWidget {
  @override
  _BoughtFoodsState createState() => _BoughtFoodsState();
}

class _BoughtFoodsState extends State<BoughtFoods> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
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
          Positioned(
            left: 10,
            bottom: 10,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Bolo de Chocolate",
                    style: TextStyle(
                      color: Colors.white, fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),),
                    Row(
                      children: [
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16),
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16),
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16),
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16),
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16),
                        SizedBox(width: 10,),
                        Text("(22 Avaliações)", style: TextStyle(
                          color: Colors.white70,
                        ),),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Text("1500", style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.orangeAccent)),
                    Text("MZN", style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white70
                    ),),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
