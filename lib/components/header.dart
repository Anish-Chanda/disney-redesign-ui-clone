import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';
import 'circular_icon_button.dart';

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
        ),
        Positioned(
            right: 8,
            top: 8,
            child: CachedNetworkImage(
                fadeInCurve: Curves.easeIn,
                fit: BoxFit.cover,
                imageBuilder: (context, imageProvider) {
                  return CircleAvatar(
                    backgroundImage: imageProvider,
                    radius: 30,
                  );
                },
                imageUrl:
                    'https://imgs.search.brave.com/cN8waO0zxqcPpSzcgMOX0HknaUInJtGxsl6aEbewvrw/rs:fit:1200:1024:1/g:ce/aHR0cHM6Ly9pbWFn/ZXMud2FsbHBhcGVy/c2Rlbi5jb20vaW1h/Z2UvZG93bmxvYWQv/YmFieS15b2RhLWZh/bmFydC0yMDE5X2Ey/eHRaV2FVbVpxYXJh/V2twSlJuYW10bHJX/WmxaMmsuanBn')),
        Positioned(
          bottom: 75,
          right: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularIconButton(
                  backroundColor: white60, icon: FontAwesomeIcons.plus),
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
              const CircularIconButton(
                  backroundColor: white60, icon: CupertinoIcons.info)
            ],
          ),
        )
      ],
    );
  }
}
