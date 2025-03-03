import 'package:flutter/material.dart';
import 'package:flux_store/model/home_screen_models/category_model.dart';
import 'package:flux_store/utils/constants/color_constants.dart';
import 'package:flux_store/utils/constants/image_constants.dart';

void main() {}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedCategory = 0;
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
    final List<CategoryModel> categories = [
      CategoryModel(name: "female", icon: Icons.female),
      CategoryModel(name: "Male", icon: Icons.male),
      CategoryModel(name: "Accessories", icon: Icons.access_alarm),
      CategoryModel(name: "Beauty", icon: Icons.image)
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
          4,
          (index) => InkWell(
                onTap: () {
                  setState(() {
                    selectedCategory = index;
                  });
                },
                child: Column(
                  spacing: 6,
                  children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all()),
                      child: CircleAvatar(
                        backgroundColor: selectedCategory == index
                            ? ColorConstants.kofblack
                            : ColorConstants.lightgrey,
                        radius: 18,
                        child: Icon(
                          categories[index].icon,
                          color: ColorConstants.white,
                        ),
                      ),
                    ),
                    Text(categories[index].name)
                  ],
                ),
              )),
    );
  }
}
