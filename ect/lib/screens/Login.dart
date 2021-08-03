import 'package:ect/widgets/Button.dart';
import 'package:ect/widgets/textFieldTxt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Container(
              padding: EdgeInsets.all(8),
              child: Center(
                child: Text(
                  'Inicia sesión',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
            TextFieldTitle(text: '¿Cuál es tu email?'),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(),
            ),
             TextFieldTitle(text: '¿Cuál es tu contraseña?'),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(),
            ),
            Center(
              child: Container(
                  width: 300, height: 50, child: MainButton(onpress: () => {}, titulo: 'Iniciar Sesión',)),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(10),
                child: GestureDetector(
                    onTap: () => {
                      Navigator.of(context).pop()
                    },
                    child: Text(
                      '¿Ya tienes cuenta?',
                      style: Theme.of(context).textTheme.bodyText1,
                    )),
              ),
            )
        ],),
      ),
    );
  }
}