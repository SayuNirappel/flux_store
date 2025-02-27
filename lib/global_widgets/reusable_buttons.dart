import 'package:flutter/material.dart';

import '../utils/constants/color_constants.dart';
//import '../view/intro_screen/intro_screen.dart';

class ReusableButton extends StatelessWidget {
  final void Function() onClickButton;
  final String name;
  final Color? bcolor;
  final Color? bgcolor;
  final Color? fcolor;
  final double? oalpha;

  const ReusableButton(
      {super.key,
      required this.name,
      required this.onClickButton,
      this.bcolor,
      this.bgcolor,
      this.fcolor,
      this.oalpha});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClickButton,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 53, vertical: 15),
        decoration: BoxDecoration(
            border: Border.all(
              width: 1.8,
              color: bcolor ?? ColorConstants.white,
            ),
            borderRadius: BorderRadius.circular(29.5),
            color: bgcolor ??
                ColorConstants.lightgrey.withValues(alpha: oalpha ?? 255)),
        child: Text(
          name,
          style: TextStyle(
              color: fcolor ?? ColorConstants.white,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
