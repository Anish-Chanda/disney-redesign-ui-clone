import 'package:cached_network_image/cached_network_image.dart';
import 'package:disney_redesign/screens/movie_screen/movie_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../data/movie_suggestions.dart';
import '../models/movie_model.dart';
import 'movie_tile.dart';

class MovieSuggestions extends StatelessWidget {
  const MovieSuggestions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: movieSuggestions.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(movieSuggestions.elementAt(index)['row_name'],
                  style: headingText2),
              const SizedBox(height: 8),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: getMovieTiles(
                      movieSuggestions: movieSuggestions,
                      index: index,
                      context: context),
                ),
              ),
              const SizedBox(height: 16)
            ],
          );
        },
      ),
    );
  }

  List<Widget> getMovieTiles(
      {required List movieSuggestions,
      required int index,
      required BuildContext context}) {
    final List currMovieData = movieSuggestions.elementAt(index)['movie_data'];
    final bool isExpanded = movieSuggestions.elementAt(index)['isExpanded'];
    final bool isKeepWatching =
        movieSuggestions.elementAt(index)['row_name'] == 'Keep watching'
            ? true
            : false;
    List<Widget> movieTiles = [];
    for (var i = 0; i < currMovieData.length; i++) {
      final Movie currMovie = currMovieData.elementAt(i);
      movieTiles.add(
        MovieTile(
            currMovie: currMovie,
            isExpanded: isExpanded,
            isKeepWatching: isKeepWatching),
      );
    }
    return movieTiles;
  }
}
