import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../components/circular_icon_button.dart';
import '../../components/header.dart';
import '../../components/movie_suggestions.dart';
import '../../constants.dart';
import 'components/category_selection.dart';

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
      resizeToAvoidBottomInset: false,
      extendBody: true,
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Header(size: size),
          const CategorySelection(),
          const SizedBox(height: 32),
          const MovieSuggestions(),
        ],
      ),
    );
  }
}

