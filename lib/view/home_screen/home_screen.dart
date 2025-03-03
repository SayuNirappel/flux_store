import 'package:flutter/material.dart';
import 'package:flux_store/utils/constants/color_constants.dart';
import 'package:flux_store/utils/constants/image_constants.dart';

void main() {}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Image.asset(ImageConstants.moreIcon),
          title: Text("Gemstore"),
          centerTitle: true,
          actions: [Image.asset(ImageConstants.notificationIcon)],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 34, right: 35, top: 20),
            child: Column(
              children: [_buildCategorySection()],
            ),
          ),
        ));
  }

  Row _buildCategorySection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
          4,
          (index) => Column(
                spacing: 6,
                children: [
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all()),
                    child: CircleAvatar(
                      backgroundColor: ColorConstants.kofblack,
                      radius: 18,
                      child: Icon(
                        Icons.female,
                        color: ColorConstants.white,
                      ),
                    ),
                  ),
                  Text("Women")
                ],
              )),
    );
  }
}
