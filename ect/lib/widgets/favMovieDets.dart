import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavMovieDetails extends StatelessWidget {
  final title;
  final imgUrl;
  final rating;
  final reparto;
  final year;
  final descripcion;
  final director;
  const FavMovieDetails(
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
    return Container(
      margin: EdgeInsets.all(5),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            width: 85,
            height: 150,
            child: Image.network(imgUrl,fit: BoxFit.fill,),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Text(title, style: Theme.of(context).textTheme.bodyText1,)),
                Row(
                  children: [
                    Text(year, style: Theme.of(context).textTheme.bodyText2),
                    Text(' '),
                    Text(director, style: Theme.of(context).textTheme.bodyText2),
                  ],
                ),
                Text(reparto, style: Theme.of(context).textTheme.bodyText2),
                Text(descripcion, style: Theme.of(context).textTheme.bodyText2),
              ],
            ),
          )
        ],
      ),
    );
  }
}
