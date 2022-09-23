import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/model/movie.dart';
import 'package:movie_app/screens/home/components/movie_card.dart';

class MovieCarousel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  late PageController _pageController;
  final List<Movie> movies = [
    Movie.fromJson(jsonDecode('''{
			"id": "movie-82050",
			"type": "anime",
			"link": "//kodik.info/video/82050/046ef0949b7bf1e7ed10e59f78fd5a59/720p",
			"title": "Блич",
			"title_orig": "Bleach: Memories of Nobody",
			"other_title": "Блич (фильм первый) / Блич: Воспоминания ни о ком, Блич",
			"translation": {
				"id": 957,
				"title": "youmiteru",
				"type": "voice"
			},
			"year": 2006,
			"kinopoisk_id": "396125",
			"imdb_id": "tt1105263",
			"worldart_link": "http://www.world-art.ru/animation/animation.php?id=5903",
			"shikimori_id": "1686",
			"quality": "BDRip 720p",
			"camrip": false,
			"blocked_countries": [],
			"created_at": "2021-12-19T18:22:12Z",
			"updated_at": "2021-12-19T18:22:12Z",
			"screenshots": [
				"https://i.kodik.biz/screenshots/video/82050/1.jpg",
				"https://i.kodik.biz/screenshots/video/82050/2.jpg",
				"https://i.kodik.biz/screenshots/video/82050/3.jpg",
				"https://i.kodik.biz/screenshots/video/82050/4.jpg",
				"https://i.kodik.biz/screenshots/video/82050/5.jpg"
			]
		}''')),
    Movie.fromJson(jsonDecode('''{
			"id": "movie-20609",
			"type": "anime",
			"link": "//kodik.info/video/20609/e8fd5bc1190b7eb1ee1a3e1c3aec5f62/720p",
			"title": "Наруто 4",
			"title_orig": "Gekijô-ban Naruto shippûden",
			"other_title": "Наруто (фильм четвёртый) - Смерть Наруто / Наруто: Ураганные Хроники - Адепты Тёмного царства",
			"translation": {
				"id": 767,
				"title": "SHIZA Project",
				"type": "voice"
			},
			"year": 2007,
			"kinopoisk_id": "283418",
			"imdb_id": "tt0988982",
			"worldart_link": "http://www.world-art.ru/animation/animation.php?id=6476",
			"shikimori_id": "2472",
			"quality": "BDRip 720p",
			"camrip": false,
			"blocked_countries": [],
			"created_at": "2018-01-21T13:18:37Z",
			"updated_at": "2019-11-16T22:13:46Z",
			"screenshots": [
				"https://i.kodik.biz/screenshots/video/20609/1.jpg",
				"https://i.kodik.biz/screenshots/video/20609/2.jpg",
				"https://i.kodik.biz/screenshots/video/20609/3.jpg",
				"https://i.kodik.biz/screenshots/video/20609/4.jpg",
				"https://i.kodik.biz/screenshots/video/20609/5.jpg"
			]
		}'''))
  ];
  int initialPage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
            itemCount: movies.length,
            itemBuilder: (context, index) => MovieCard(movie: movies[index])),
      ),
    );
  }
}