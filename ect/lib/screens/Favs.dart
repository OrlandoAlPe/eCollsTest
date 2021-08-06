import 'package:ect/widgets/favMovie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Text(
          'Favorites',
          style: Theme.of(context).textTheme.headline1,
        ),
        FavMovie(),
      ],
    ));
  }
}
