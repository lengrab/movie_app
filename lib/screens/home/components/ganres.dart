import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/screens/home/components/genre_card.dart';

class Genres extends StatelessWidget {
  const Genres({
    Key? key,
    required this.genres,
  }) : super(key: key);

  final List<String> genres;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: SizedBox(
        height: 36,
        child:
        ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: genres.length,
            itemBuilder: (context, index) => GenreCard(genre: genres[index],)),
      ),
    );
  }
}
