import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({Key? key, required this.onpress, required this.titulo}) : super(key: key);
  final String titulo;
  final void Function() onpress;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
  
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).primaryColor,
          textStyle: TextStyle(fontSize: 30),
        ),
        onPressed: onpress,
        child: Text(
          titulo,
        ));
  }
}
