import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/movie_model.dart';
import '../movie_screen.dart';
import 'more_like_this.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: white20,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 24, bottom: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 8),
            Row(
              children: [
                const Spacer(),
                Text(
                  movie.name,
                  style: bodyText2,
                ),
                const SizedBox(width: 5),
                Image.asset('assets/images/imdb-logo.png', height: 20),
                const SizedBox(width: 5),
                Text(
                  movie.imdbRating.toString(),
                  style: bodyText2,
                ),
                const Spacer()
              ],
            ),
            const SizedBox(height: 8),
            Text(
              textAlign: TextAlign.center,
              movie.description,
              style: bodyText2,
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const Text(
                      'Director',
                      style: bodyText1,
                    ),
                    Text(
                      movie.director,
                      style: bodyText2,
                    ),
                    const SizedBox(height: 8),
                    const Text('Starring', style: bodyText1),
                    getStars(movie)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text('Music By', style: bodyText1),
                    Text(
                      movie.musicBy,
                      style: bodyText2,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
