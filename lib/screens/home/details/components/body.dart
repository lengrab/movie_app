import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/model/movie.dart';
import 'package:movie_app/screens/home/components/ganres.dart';
import 'package:movie_app/screens/home/details/components/backdrop_and_rating.dart';
import 'package:movie_app/screens/home/details/components/cast_and_crew.dart';
import 'package:movie_app/screens/home/details/components/title_duration_and_fub.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    // TODO Need add to movie model
    List<String> genres = ['Action', 'Comedy', 'Drama', 'Animations'];
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BackdropAndRating(size: size, movie: movie),
        const SizedBox(
          height: kDefaultPadding / 2,
        ),
        TitleDurationAndFabButton(movie: movie),
        Genres(genres: genres),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding / 2,
            horizontal: kDefaultPadding,
          ),
          child: Text(
            "Plot Summary",
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: kDefaultPadding / 2,
            horizontal: kDefaultPadding,
          ),
          child: Text(
            "Some plot...",
            style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyText2?.fontSize,
                color: kTextLightColor),
          ),
        ), // TODO Need add to model
        CastAndCrew(),
      ],
    );
  }
}


