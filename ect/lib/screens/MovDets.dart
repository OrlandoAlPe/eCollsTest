import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieDetails extends StatelessWidget {
  final title;
  final imgUrl;
  final rating;
  final reparto;
  final year;
  final descripcion;
  final director;
  const MovieDetails(
      {Key? key,
      required this.title,
      required this.imgUrl,
      required this.rating,
      this.descripcion,
      this.reparto,
      this.director,
      this.year})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Text(title, style: Theme.of(context).textTheme.headline1),
            ),
            Stack(
              children: [
                Align(
                  child: Container(
                    alignment: Alignment.center,
                    width: 200,
                    height: 200,
                    child: Image.network(imgUrl),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 110,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.black,
                      child: Center(
                          child: Text(
                        rating,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      )),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(year, style: Theme.of(context).textTheme.bodyText1),
                  Text(' ⚫ '),
                  Text(director, style: Theme.of(context).textTheme.bodyText1),
                 
                ],
              ),
            ),
            Text(reparto, style: Theme.of(context).textTheme.bodyText1),
            Text(descripcion, style: Theme.of(context).textTheme.bodyText1),
            SizedBox(height: 100),
            Container(
              margin: EdgeInsets.all(15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Agrega a Favoritos', style: Theme.of(context).textTheme.headline1,),
                  Icon(Icons.star_outline,size: 45,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
