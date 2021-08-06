import 'package:ect/model/movieModel.dart';
import 'package:ect/widgets/favMovieDets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavMovie extends StatelessWidget {
  const FavMovie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 500,
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
                itemBuilder: (context, index) {
                  return FavMovieDetails(
                    title: items[index].titulo.toString(),
                    imgUrl: items[index].imageUrl.toString(),
                    rating: items[index].rating.toString(),
                    director: items[index].director.toString(),
                    descripcion: items[index].descripcion.toString(),
                    reparto: items[index].reparto.toString(),
                    year: items[index].year.toString(),
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
    );
  }
}
