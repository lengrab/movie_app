import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/model/movie.dart';

import '../details/details.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({super.key, required this.movie});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: OpenContainer(
          closedElevation: 0,
          openElevation: 0,
          closedBuilder: (context, action) => buildMovieCard(context),
          openBuilder: (context, action) => DetailScreen(movie: movie),
        )
    );
  }

  Column buildMovieCard(BuildContext context) {
    return Column(
          children: <Widget>[
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  boxShadow: const [kDefaultShadow],
                  borderRadius: BorderRadius.circular(40),
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/poster_2.jpg'))),
            )),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding) / 2,
              child: Text(
                movie.title!,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/star_fill.svg',
                  height: 20,
                ),
                const SizedBox(
                  width: kDefaultPadding / 2,
                ),
                Text(
                  '8.2',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            )
          ],
        );
  }
}
