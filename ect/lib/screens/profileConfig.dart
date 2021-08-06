import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileConfig extends StatelessWidget {
  const ProfileConfig({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Stack(
            children: [
              Align(
                child: Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 200,
                  child: Image.network(
                      'https://devtalk.blender.org/uploads/default/original/2X/c/cbd0b1a6345a44b58dda0f6a355eb39ce4e8a56a.png'),
                ),
              ),
              Positioned(
                bottom: 30,
                right: 140,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.black,
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            'Nombre',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Correo@correo.com',
            style: Theme.of(context).textTheme.headline6,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: 500,
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Icon(Icons.computer),
                        Text(' Dato de la sesion')
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Text('Dato del token {auth}'),
                  ),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                      onPressed: () => {},
                      child: Text('Cerrar sesión'),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
