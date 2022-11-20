import 'package:cached_network_image/cached_network_image.dart';
import 'package:disney_redesign/components/circular_button.dart';
import 'package:disney_redesign/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MovieScreenHeader extends StatelessWidget {
  const MovieScreenHeader({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //IMAGE

        CachedNetworkImage(
          imageUrl: imageUrl,
          fadeInCurve: Curves.easeIn,
          imageBuilder: (context, imageProvider) {
            return Container(
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Image(image: imageProvider),
            );
          },
        ),

        //Close button at top right
        Positioned(
          top: 10,
          right: 10,
          child: IconButton(
            icon: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: white20.withOpacity(0.5)),
              child: const Icon(
                FontAwesomeIcons.x,
                color: Colors.white,
                size: 18,
              ),
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        //Funtion buttons row at botton

        Positioned(
          bottom: 16,
          left: 16,
          child: Row(
            children: <Widget>[
              const SizedBox(width: 10),
              //PLAY BUTTON
              ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    backgroundColor:
                        const MaterialStatePropertyAll<Color>(Colors.white)),
                onPressed: () {},
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 5),
                  child: Row(
                    children: const [
                      Icon(
                        FontAwesomeIcons.play,
                        color: Colors.black,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Play',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),

              //PLUS BUTTON
              CircularButton(
                color: white50.withOpacity(0.5),
                icon: const Icon(FontAwesomeIcons.plus),
              ),
              const SizedBox(width: 75),
              //MOREOPTIONS BUTTOn
              CircularButton(
                  color: white50.withOpacity(0.5),
                  icon: const Icon(FontAwesomeIcons.ellipsis))
            ],
          ),
        )
      ],
    );
  }
}
