import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldTitle extends StatelessWidget {
  final String text;
  const TextFieldTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        text,
        textAlign: TextAlign.start,
        style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.bold),
      ),
    );
  }
}
