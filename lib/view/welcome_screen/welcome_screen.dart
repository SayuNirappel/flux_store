import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flux_store/utils/constants/color_constants.dart';
import 'package:flux_store/utils/constants/image_constants.dart';

void main() {}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withAlpha(100), BlendMode.darken),
                fit: BoxFit.cover,
                image: AssetImage(ImageConstants.welcomeBG))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Welcome to Gemstore",
              style: TextStyle(
                  color: ColorConstants.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 13,
            ),
            Text(
              "The home for a fashionista",
              style: TextStyle(
                  color: ColorConstants.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 53, vertical: 15),
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.8,
                    color: ColorConstants.white,
                  ),
                  borderRadius: BorderRadius.circular(29.5),
                  color: ColorConstants.white.withValues(alpha: 70)),
              child: Text(
                "Get Started",
                style: TextStyle(
                    color: ColorConstants.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 103,
            )
          ],
        ),
      ),
    );
  }
}
