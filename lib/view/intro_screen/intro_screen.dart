import 'package:flutter/material.dart';
import 'package:flux_store/global_widgets/reusable_buttons.dart';
import 'package:flux_store/utils/constants/color_constants.dart';
import 'package:flux_store/utils/constants/image_constants.dart';
import 'package:flux_store/view/signup_screen/signup_screen.dart';

void main() {}

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 55,
              ),
              //title section
              Text(
                "Discover something new",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 17,
              ),
              Text(
                "Special new arrivals just for you",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 375,
                        width: double.infinity,
                        decoration:
                            BoxDecoration(color: ColorConstants.kofblack),
                      ),
                    ),
                    _buildCarrouselSection(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCarrouselSection(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 368,
          width: 281,
          child: PageView.builder(
              itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConstants.lightgrey),
                    child: Image.asset(ImageConstants.introimg1,
                        alignment: Alignment.bottomCenter),
                  )),
        ),
        SizedBox(
          height: 57,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: List.generate(
              3,
              (index) => Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: ColorConstants.lightgrey,
                    ),
                  )),
        ),
        SizedBox(
          height: 27,
        ),
        ReusableButton(
          name: "Shope Now",
          oalpha: 170,
          onClickButton: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => SignupScreen()));
          },
        ),
      ],
    );
  }
}
