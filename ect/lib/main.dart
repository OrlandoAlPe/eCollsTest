import 'package:ect/screens/Favs.dart';
import 'package:ect/screens/Home.dart';
import 'package:ect/screens/Login.dart';
import 'package:ect/screens/MovDets.dart';
import 'package:ect/screens/SignIn.dart';
import 'package:ect/screens/profileConfig.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ECollS',
      theme: ThemeData(
        primaryColor: Color(0xFF575757),
        accentColor: Color(0xFFBDBDBD),
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF000000)),
          headline6: TextStyle(fontSize: 12.0, color: Color(0xFF575757)),
          bodyText1: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
      home: SignIn(),
      routes: {
        '/home': (_) => Home(),
        '/signIn': (_) => SignIn(),
        '/login': (_) => Login(),
        '/config': (_) => ProfileConfig(),
        '/dets': (_) => MovieDetails(),
        '/fav':(_)=> Favorites(),
      },
    );
  }
}
