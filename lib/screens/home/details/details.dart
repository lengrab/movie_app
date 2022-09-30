import 'package:flutter/material.dart';
import 'package:movie_app/model/movie.dart';
import 'package:movie_app/screens/home/details/components/body.dart';



class DetailScreen extends StatelessWidget{
  final Movie movie;

  const DetailScreen({super.key, required this.movie});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Body(movie: movie,),
    );
  }
}