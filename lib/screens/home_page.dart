import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/circular_icon_button.dart';
import '../components/header.dart';
import '../components/movie_suggestions.dart';
import '../constants.dart';

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
              const SizedBox(width: 8),
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
              const SizedBox(width: 8),
              const CircularIconButton(
                  backroundColor: white20, icon: FontAwesomeIcons.arrowDown),
              const SizedBox(width: 8),
            ],
          ),
          const SizedBox(height: 32),
          const MovieSuggestions(),
        ],
      ),
    );
  }
}