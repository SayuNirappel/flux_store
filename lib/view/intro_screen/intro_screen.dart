import 'package:flutter/material.dart';
import 'package:flux_store/utils/constants/color_constants.dart';

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
                    Column(
                      children: [
                        SizedBox(
                          height: 368,
                          width: 281,
                          child: PageView.builder(
                              itemBuilder: (context, index) => Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: ColorConstants.lightgrey),
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
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => IntroScreen()));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 53, vertical: 15),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1.8,
                                  color: ColorConstants.white,
                                ),
                                borderRadius: BorderRadius.circular(29.5),
                                color: ColorConstants.lightgrey
                                    .withValues(alpha: 70)),
                            child: Text(
                              "Shopping Now",
                              style: TextStyle(
                                  color: ColorConstants.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
