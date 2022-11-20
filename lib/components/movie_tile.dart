import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/movie_model.dart';
import '../screens/movie_screen/movie_screen.dart';

class MovieTile extends StatelessWidget {
  const MovieTile({
    super.key,
    required this.currMovie,
    required this.isExpanded,
    required this.isKeepWatching,
  });

  final Movie currMovie;
  final bool isExpanded;
  final bool isKeepWatching;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MovieScreen(
                  imageUrl: currMovie.imgUrl,
                  movie: currMovie,
                ),
              ));
        },
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
                            padding: const EdgeInsets.symmetric(horizontal: 4),
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
}
