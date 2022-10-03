import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/screens/home/details/components/cast_card.dart';

class CastAndCrew extends StatelessWidget {
  final List<Map> casts = [
    {
      'image': 'assets/images/actor_1.png',
      'actor': 'James Mangold',
      'movieName': 'Director'
    },
    {
      'image': 'assets/images/actor_2.png',
      'actor': 'Matt Damon',
      'movieName': 'Carrol'
    },
    {
      'image': 'assets/images/actor_3.png',
      'actor': 'Christian Bale',
      'movieName': 'Ken Miles'
    },
    {
      'image': 'assets/images/actor_4.png',
      'actor': 'Catriona Baffle',
      'movieName': 'Mollie'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Cast & Crew',
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(height: kDefaultPadding),
          SizedBox(
            height: 160,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: casts.length,
                itemBuilder: (context, index) => CastCard(
                  cast: casts[index],
                )),
          ),
        ],
      ),
    );
  }
}
