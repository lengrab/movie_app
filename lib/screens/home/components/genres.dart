import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';

import 'genre_card.dart';

class Ganres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> genres = [
      'Action',
      'Crime',
      'Comedy',
      'Drama',
      'Horror',
      'Animations'
    ];
    return Container(
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        height: 36,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: genres.length,
          itemBuilder: (context, index) => GenreCard(genre: genres[index]),
        ));
  }
}
