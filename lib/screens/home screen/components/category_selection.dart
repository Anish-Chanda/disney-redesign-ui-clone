import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../components/circular_icon_button.dart';
import '../../../constants.dart';

class CategorySelection extends StatelessWidget {
  const CategorySelection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
