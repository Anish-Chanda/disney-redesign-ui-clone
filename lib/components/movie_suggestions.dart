import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../data/movie_suggestions.dart';
import '../models/movie_model.dart';

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
                      movieSuggestions: movieSuggestions, index: index),
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
      {required List movieSuggestions, required int index}) {
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
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: CachedNetworkImage(
            fit: BoxFit.cover,
            placeholder: (context, url) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.grey,
                  height: isExpanded ? 300 : 200,
                  width: isExpanded ? 200 : 130,
                ),
              );
            },
            height: isExpanded ? 300 : 200,
            width: isExpanded ? 200 : 130,
            fadeInCurve: Curves.easeIn,
            imageBuilder: (context, imageProvider) {
              return isKeepWatching
                  ? Stack(
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image(image: imageProvider),
                        ),
                        Positioned(
                          width: 125,
                          bottom: 20,
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              child: LinearProgressIndicator(
                                backgroundColor: white50.withOpacity(0.5),
                                color: Colors.white,
                                value: 0.3,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  : Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image(image: imageProvider, fit: BoxFit.cover),
                    );
            },
            imageUrl: currMovie.imgUrl,
          ),
        ),
      );
    }
    return movieTiles;
  }
}
