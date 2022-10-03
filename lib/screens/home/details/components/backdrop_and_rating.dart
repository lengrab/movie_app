import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/model/movie.dart';

class BackdropAndRating extends StatelessWidget {
  const BackdropAndRating({
    Key? key,
    required this.size,
    required this.movie,
  }) : super(key: key);

  final Size size;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.4,
      child: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height * 0.4 - 50,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/poster_2.jpg'),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: size.width * 0.9,
              height: 100,
              decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff12153d),
                        blurRadius: 50,
                        offset: Offset(0, 5))
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50)),
                  color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/star_fill.svg'),
                      const SizedBox(
                        height: kDefaultPadding / 4,
                      ),
                      RichText(
                          text: TextSpan(
                              style: const TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                    text: '${movie.year}/',
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600)),
                                const TextSpan(
                                    text: '10\n',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600)),
                                TextSpan(
                                    text: '${movie.quality}',
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                              ]))
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/star.svg'),
                      const SizedBox(height: kDefaultPadding / 4),
                      Text(
                        'Rate This',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        width: 30,
                        height: 30,
                        child: const Center(
                          child: Text(
                            '86',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                        ), // TODO Link to score
                      ),
                      const SizedBox(
                        height: kDefaultPadding / 4,
                      ),
                      RichText(
                          text: TextSpan(
                              style: const TextStyle(color: Colors.black),
                              children: [
                                const TextSpan(
                                    text: 'Metascore\n',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600)),
                                TextSpan(
                                    text: '23 critic review', // TODO add link
                                    style:
                                    Theme.of(context).textTheme.bodyText2),
                              ]))
                    ],
                  )
                ],
              ),
            ),
          ),
          SafeArea(
            child: BackButton(),
          )
        ],
      ),
    );
  }
}
