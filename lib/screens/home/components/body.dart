import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/screens/home/components/movie_carousel.dart';
import 'categories.dart';
import 'genres.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CategoryList(),
          Ganres(),
          const SizedBox(height: kDefaultPadding,),
          MovieCarousel(),
        ],
      ),
    );
  }
}