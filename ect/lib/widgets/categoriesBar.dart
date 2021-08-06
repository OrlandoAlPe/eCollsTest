import 'package:ect/model/movieModel.dart';
import 'package:ect/screens/MovDets.dart';
import 'package:ect/widgets/movieItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CategBar extends StatelessWidget {
  const CategBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          color: Theme.of(context).accentColor,
          height: 250,
          width: 390,
          child: FutureBuilder(
            future: FetchingMovies.FetchJsonFileData(),
            builder: (context, data) {
              if (data.hasError) {
                return Center(child: Text('Error :( ${data.error}'));
              } else if (data.hasData) {
                var items = data.data as List<MovieDataModel>;
                return ListView.builder(
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return MovieItem(
                      imageUrl: items[index].imageUrl.toString(),
                      onpress: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MovieDetails(
                              title: items[index].titulo.toString(),
                              imgUrl: items[index].imageUrl.toString(),
                              rating: items[index].rating.toString(),
                              director: items[index].director.toString(),
                              descripcion: items[index].descripcion.toString(),
                              reparto: items[index].reparto.toString(),
                              year: items[index].year.toString(),
                            ),
                          ),
                        )
                      },
                    );
                  },
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
