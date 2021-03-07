import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 32, vertical: 14),
          hintText: "Pesquisar",
          suffixIcon: Icon(Icons.search, color: Theme.of(context).primaryColor,),
          border: InputBorder.none
          
        ),
      ),
    );
  }
}
