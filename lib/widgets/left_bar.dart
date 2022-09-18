// ignore_for_file: prefer_const_constructors

import '../constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/constants/app_constants.dart';

class LeftBar extends StatelessWidget {
  final double barWidth;

  const LeftBar({Key? key, required this.barWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //align everything to right side of the row
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 25,
          width: barWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            color: accentHexColor
          ),
        ),
      ],
    );
  }
}
