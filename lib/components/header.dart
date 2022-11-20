import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';
import 'circular_button.dart';

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
        //Background image
        Image.asset('assets/images/luca.png'),

        //fade out effect container
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
        ),

        //Profile picture
        Positioned(
          right: 8,
          top: 8,
          child: CachedNetworkImage(
              fadeInCurve: Curves.easeIn,
              fit: BoxFit.cover,
              imageBuilder: (context, imageProvider) {
                return CircleAvatar(
                  backgroundImage: imageProvider,
                  radius: 25,
                );
              },
              imageUrl: profileImageUrl),
        ),

        //Row of buttons
        Positioned(
          bottom: 75,
          right: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularButton(
                  color: white60, icon: Icon(FontAwesomeIcons.plus)),
              const SizedBox(width: 8),
              GestureDetector(
                child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          FontAwesomeIcons.play,
                          size: 15,
                        ),
                        SizedBox(width: 4),
                        Text('Play'),
                      ],
                    ),
                  )),
                ),
              ),
              const SizedBox(width: 8),
              const CircularButton(
                  color: white60, icon: Icon(CupertinoIcons.info))
            ],
          ),
        )
      ],
    );
  }
}
