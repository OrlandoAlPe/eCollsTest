import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieItem extends StatelessWidget {
  final imageUrl;
  final onpress;
  const MovieItem({Key? key,required this.imageUrl, required this.onpress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        margin: EdgeInsets.all(25),
        child: Card(
          child: Image.network(imageUrl),
        ),
      ),
    );
  }
}
