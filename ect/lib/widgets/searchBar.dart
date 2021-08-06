import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: TextField(
        decoration: InputDecoration(
            icon: Icon(Icons.search),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            labelText: 'Buscar'),
      ),
    );
  }
}
