// ignore_for_file: deprecated_member_use

import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:disney_redesign/constants.dart';
import 'package:disney_redesign/data/movie_suggestions.dart';
import 'package:disney_redesign/models/movie_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/circular_icon_button.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Disney+ redesign',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Header(size: size),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 8),
              const Text(
                'Everything',
                style: headingText1,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.arrow_down,
                    color: Colors.white,
                  )),
              const Spacer(),
              const CircularIconButton(
                backroundColor: white20,
                icon: FontAwesomeIcons.search,
              ),
              SizedBox(width: 8),
              const CircularIconButton(
                  backroundColor: white20, icon: FontAwesomeIcons.arrowDown),
              SizedBox(width: 8),
            ],
          ),
          const SizedBox(height: 32),
          const MovieSuggestions(),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/luca.png'),
        Positioned(
          bottom: 0,
          child: Container(
            height: 100,
            width: size.width,
            decoration: BoxDecoration(
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
        )
        // Positioned(
        //     child: Row(
        //   children: [
        //     IconButton(
        //       color: Colors.white,
        //       onPressed: () {},
        //       icon: const Icon(
        //         FontAwesomeIcons.plus,
        //       ),
        //     ),
        //     GestureDetector(
        //       child: Container(
        //         height: 30,
        //         decoration: BoxDecoration(
        //           color: Colors.white,
        //           borderRadius: BorderRadius.circular(25),
        //         ),
        //         child: Center(
        //             child: Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: const [
        //               Icon(
        //                 FontAwesomeIcons.play,
        //                 size: 15,
        //               ),
        //               Text('Play'),
        //             ],
        //           ),
        //         )),
        //       ),
        //     )
        //   ],
        // ))
      ],
    );
  }
}

class MovieSuggestions extends StatelessWidget {
  const MovieSuggestions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: movieSuggestions.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(movieSuggestions.elementAt(index)['row_name'],
                style: headingText2),
            const SizedBox(height: 8),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: getMovieTiles(
                      movieSuggestions: movieSuggestions, index: index)),
            )
          ],
        );
      },
    );
  }

  List<Widget> getMovieTiles(
      {required List movieSuggestions, required int index}) {
    final List currMovieData = movieSuggestions.elementAt(index)['movie_data'];
    List<Widget> movieTiles = [];
    for (var i = 0; i < currMovieData.length; i++) {
      final Movie currMovie = currMovieData.elementAt(i);
      movieTiles.add(
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: CachedNetworkImage(
            fit: BoxFit.cover,
            placeholder: (context, url) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.grey,
                  height: 200,
                  width: 130,
                ),
              );
            },
            height: 200,
            width: 130,
            fadeInCurve: Curves.easeIn,
            imageBuilder: (context, imageProvider) {
              return Container(
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
