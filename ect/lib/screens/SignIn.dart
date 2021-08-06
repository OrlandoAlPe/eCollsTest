import 'package:ect/widgets/Button.dart';
import 'package:ect/widgets/textFieldTxt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
            Container(
              padding: EdgeInsets.all(8),
              child: Text(
                'Vamos a crear tu cuenta',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            TextFieldTitle(text: 'Nombre'),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(),
            ),
             TextFieldTitle(text: 'Apellido Paterno'),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(),
            ),
             TextFieldTitle(text: 'Apellido Materno'),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(),
            ),
             TextFieldTitle(text: 'Telefono'),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(),
            ),
             TextFieldTitle(text: 'Estado'),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(),
            ),
             TextFieldTitle(text: 'Fecha de nacimiento'),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(),
            ),
             TextFieldTitle(text: 'Genero'),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(),
            ),
             TextFieldTitle(text: 'Email'),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(),
            ),
             TextFieldTitle(text: 'Establece una contraseña'),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(),
            ),
             TextFieldTitle(text: 'Ingresa nuevamente la contraseña'),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(),
            ),
            Center(
              child: Container(
                  width: 300, height: 50, child: MainButton(onpress: () => {}, titulo: 'Crear Cuenta',)),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(10),
                child: GestureDetector(
                    onTap: () => {
                      Navigator.of(context).pushNamed('/login')
                    },
                    child: Text(
                      '¿Ya tienes cuenta?',
                      style: Theme.of(context).textTheme.bodyText1,
                    )),
              ),
            )
                  ],
                ),
          )),
    );
  }
}
