import 'dart:convert';
import 'package:flutter/services.dart';

class MovieDataModel{
  int? id;
  String? titulo;
  double? rating;
  int? year;
  String? director;
  String? reparto;
  String? descripcion;
  String? imageUrl;

  MovieDataModel(this.id,this.titulo,this.rating,this.year,this.imageUrl,this.descripcion,this.director,this.reparto);

  MovieDataModel.fromJson(Map<String,dynamic> json){
    id=json['id'];
    titulo=json['titulo'];
    rating=json['rating'];
    year=json['year'];
    director=json['director'];
    reparto=json['reparto'];
    descripcion=json['descripcion'];
    imageUrl=json['imageUrl'];

  }

}

class FetchingMovies{
  static Future<List<MovieDataModel>> FetchJsonFileData()async{
    final jsonData= await rootBundle.loadString('lib/data/dummyData.json');
    final list = json.decode(jsonData) as List<dynamic>;
    return list.map((e) => MovieDataModel.fromJson(e)).toList();
  }
}