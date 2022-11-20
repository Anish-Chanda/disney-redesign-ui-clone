import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants.dart';
import '../../../models/movie_model.dart';

class MoreLikeThis extends StatelessWidget {
  const MoreLikeThis({
    super.key,
    required this.movieData,
    
  });

  final List<Movie> movieData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: white20,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16, left: 8, right: 8),
            child: Column(
              children: [
                const SizedBox(height: 32),
                Text(
                  'More like this',
                  style: headingText1.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 32),
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 175),
                  itemCount: 6,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return CachedNetworkImage(
                      fadeInCurve: Curves.easeIn,
                      imageUrl: movieData.elementAt(index).imgUrl,
                      imageBuilder: (context, imageProvider) {
                        return Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image(
                              image: imageProvider,
                              fit: BoxFit.cover,
                              height: 200),
                        );
                      },
                    );
                  },
                )
              ],
            ),
          ),
          //fade out effect container
          Positioned(
            bottom: 0,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black,
                        Colors.black.withOpacity(0.0),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  child: Column(
                    children: const [
                      Text(
                        'Show even more',
                        style: bodyText2,
                      ),
                      Icon(FontAwesomeIcons.arrowDown, color: Colors.white)
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget getStars(Movie movie) {
  return Column(
    children: [
      for (var i = 0; i < movie.stars.length; i++)
        Text(
          movie.stars.elementAt(i),
          style: bodyText2,
        )
    ],
  );
}
