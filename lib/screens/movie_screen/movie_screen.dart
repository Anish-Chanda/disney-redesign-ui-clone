import 'package:cached_network_image/cached_network_image.dart';
import 'package:disney_redesign/constants.dart';
import 'package:disney_redesign/data/movie_suggestions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../models/movie_model.dart';
import 'components/more_like_this.dart';
import 'components/movie_details.dart';
import 'components/movie_screen_header.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({
    super.key,
    required this.imageUrl,
    required this.movie,
  });
  final String imageUrl;
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    List<Movie> movieData = movieSuggestions.elementAt(0)['movie_data'];
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            MovieScreenHeader(imageUrl: imageUrl),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  movie.year.toString(),
                  style: bodyText1,
                ),
                const SizedBox(width: 5),
                const DotSeparator(),
                const SizedBox(width: 5),
                Text(
                  movie.duration,
                  style: bodyText1,
                ),
              ],
            ),
            const SizedBox(height: 8),
            MovieDetails(movie: movie),
            const SizedBox(height: 6),
            MoreLikeThis(movieData: movieData)
          ],
        ),
      ),
    );
  }
}

class DotSeparator extends StatelessWidget {
  const DotSeparator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Icon(
      FontAwesomeIcons.solidCircle,
      size: 5,
      color: Colors.grey,
    );
  }
}
