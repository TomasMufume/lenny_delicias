import 'package:flutter/material.dart';
class HomeTopInfo extends StatelessWidget {
  final textStyle = TextStyle(fontSize: 32, fontWeight: FontWeight.bold,);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Delícias", style: textStyle,),
              Text("Lenny", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
            ],
          ),
          Icon(Icons.notifications_none, size: 30, color: Theme.of(context).primaryColor,),


        ],


      ),
    );
  }
}
