import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            Image(
              image: AssetImage("assets/images/custard_50px.png"),
              height: 65,
              width: 65,
            ),
            SizedBox(width: 20,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Bolos", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                Text("50 Tipos")
              ],
            )
          ],
        ),
      ),
    );
  }
}
