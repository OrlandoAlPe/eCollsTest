import 'package:ect/screens/Login.dart';
import 'package:ect/screens/Navigation.dart';
import 'package:ect/screens/SignIn.dart';
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
          headline6: TextStyle(
              fontSize: 25.0,
              color: Color(0xFF575757),
              fontWeight: FontWeight.w100),
          bodyText1: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          bodyText2: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
        ),
      ),
      home: Navigation(),
      routes: {
        '/navigation': (_) => Navigation(),
        '/signIn': (_) => SignIn(),
        '/login': (_) => Login(),
      },
    );
  }
}
