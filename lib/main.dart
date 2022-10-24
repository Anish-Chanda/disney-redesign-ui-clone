// ignore_for_file: deprecated_member_use

import 'package:disney_redesign/constants.dart';
import 'package:disney_redesign/data/movie_suggestions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/circular_icon_button.dart';

void main() {
  runApp(const MyApp());
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
      backgroundColor: Colors.black,
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: ListView(
        children: [
          Stack(
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
          ),
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
          SizedBox(height: 32),
          Text(movieSuggestions.elementAt(0)['row_name'], style: headingText2)
        ],
      ),
    );
  }
}
