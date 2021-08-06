import 'package:ect/widgets/categoriesBar.dart';
import 'package:ect/widgets/searchBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 75,
                  height: 75,
                  child: Image.network(
                      'https://devtalk.blender.org/uploads/default/original/2X/c/cbd0b1a6345a44b58dda0f6a355eb39ce4e8a56a.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      '!Buen dia!',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      '{Nombre de usuario}, hoy será un gran día',
                      style: Theme.of(context).textTheme.bodyText2,
                    )
                  ],
                ),
              ],
            ),
            SearchBar(),
            CategBar(),
            CategBar(),
            CategBar(),
          ],
        ),
      ),
    );
  }
}
