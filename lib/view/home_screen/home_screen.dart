import 'package:carousel_slider/carousel_slider.dart';
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
  List<String> carousalImageList = [
    "https://images.pexels.com/photos/21760959/pexels-photo-21760959/free-photo-of-people-working-on-field-near-deep-forest.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/29321653/pexels-photo-29321653/free-photo-of-modern-industrial-staircase-with-neon-lights.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/30892454/pexels-photo-30892454/free-photo-of-close-up-of-vibrant-yellow-wildflowers-in-sunset-light.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/30974551/pexels-photo-30974551/free-photo-of-scenic-silhouette-of-street-lamps-at-dusk.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/3068920/pexels-photo-3068920.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
  ];

  List<Map> scrollPageImageWithDetilsList = [
    {"url": "", "Name": "Something", "Price": "\$399.9"},
    {"url": "", "Name": "Hoody", "Price": "\$234.0"},
    {"url": "", "Name": "", "Price": ""},
    {"url": "", "Name": "", "Price": ""},
    {"url": "", "Name": "", "Price": ""}
  ];

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
          child: Column(
            children: [
              //category section
              _buildCategorySection(),
              SizedBox(
                height: 30,
              ),
              _buildCarouselSection(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 34, right: 35, top: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Feature Products"),
                        TextButton(onPressed: () {}, child: Text("Show all"))
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 172,
                                width: 136,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            "https://images.pexels.com/photos/30743125/pexels-photo-30743125/free-photo-of-woman-in-green-dress-by-historical-landmark.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"))),
                              ),
                              Text("Turtle Neck Sweater"),
                              Text(scrollPageImageWithDetilsList[0]["Price"])
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget _buildCarouselSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 34, right: 35, top: 20),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 168,
          viewportFraction: 1,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 6),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          scrollDirection: Axis.horizontal,
        ),
        itemCount: carousalImageList.length,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
            Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(carousalImageList[itemIndex])),
              borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }

  Widget _buildCategorySection() {
    final List<CategoryModel> categories = [
      CategoryModel(name: "female", icon: Icons.female),
      CategoryModel(name: "Male", icon: Icons.male),
      CategoryModel(name: "Accessories", icon: Icons.access_alarm),
      CategoryModel(name: "Beauty", icon: Icons.image)
    ];
    return Padding(
      padding: const EdgeInsets.only(left: 34, right: 35, top: 20),
      child: Row(
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
                            border: selectedCategory == index
                                ? Border.all()
                                : null),
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
      ),
    );
  }
}
