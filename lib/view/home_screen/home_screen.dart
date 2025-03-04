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
  // Carousel Imagelist 1
  List<String> carousalImageList = [
    "https://images.pexels.com/photos/21760959/pexels-photo-21760959/free-photo-of-people-working-on-field-near-deep-forest.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/29321653/pexels-photo-29321653/free-photo-of-modern-industrial-staircase-with-neon-lights.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/30892454/pexels-photo-30892454/free-photo-of-close-up-of-vibrant-yellow-wildflowers-in-sunset-light.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/30974551/pexels-photo-30974551/free-photo-of-scenic-silhouette-of-street-lamps-at-dusk.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/3068920/pexels-photo-3068920.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
  ];
//List of Scroll Page 1
  List<Map> scrollPageImageWithDetilsList = [
    {
      "url":
          "https://images.pexels.com/photos/14994091/pexels-photo-14994091/free-photo-of-magenta-beautiful-woman.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "Name": "Something",
      "Price": "\$399.9"
    },
    {
      "url":
          "https://images.pexels.com/photos/30743125/pexels-photo-30743125/free-photo-of-woman-in-green-dress-by-historical-landmark.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "Name": "Hoody",
      "Price": "\$234.0"
    },
    {
      "url":
          "https://images.pexels.com/photos/15685362/pexels-photo-15685362/free-photo-of-portrait-of-a-young-woman-in-a-white-dress.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "Name": "Unknown ",
      "Price": "Free"
    },
    {
      "url":
          "https://images.pexels.com/photos/30944870/pexels-photo-30944870/free-photo-of-woman-sitting-on-yellow-flower-sculpture-outdoors.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "Name": "Unknown ",
      "Price": "Free"
    },
    {
      "url":
          "https://images.pexels.com/photos/27587343/pexels-photo-27587343/free-photo-of-a-woman-in-a-blue-shirt-and-black-leather-jacket.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "Name": "Unknown ",
      "Price": "Free"
    }
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
              //carousel section 1
              _buildCarouselSection(),
              SizedBox(
                height: 30,
              ),
              //Feature Products 1
              _buildFeatureProducts(),
              SizedBox(
                height: 19,
              ),
              //New Collection
              _buildWFitContainer(),
              SizedBox(
                height: 38,
              ),
              _buildRecommended(),
              SizedBox(
                height: 34,
              ),
              Column(
                children: [
                  Container(
                    width: 311,
                    height: 26,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [],
                    ),
                  ),
                  SizedBox(
                    height: 33,
                  ),
                  Container(
                    width: 312,
                    height: 141.03,
                  ),
                  SizedBox(
                    height: 14.97,
                  ),
                  Container(
                    width: 312,
                    height: 210,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: 316,
                    height: 194,
                    child: Row(
                      children: [Container(), Container()],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }

  Widget _buildRecommended() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 32,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Recommented"),
              TextButton(onPressed: () {}, child: Text("Show all"))
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 15,
              children: List.generate(
                  scrollPageImageWithDetilsList.length,
                  (index) => Column(
                        children: [
                          Container(
                            height: 66,
                            width: 213,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        scrollPageImageWithDetilsList[index]
                                            ["url"]))),
                          ),
                          Text(
                            scrollPageImageWithDetilsList[index]["Name"],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            scrollPageImageWithDetilsList[index]["Price"],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
            ),
          )
        ],
      ),
    );
  }

  Container _buildWFitContainer() {
    return Container(
      height: 157,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 79, top: 35, bottom: 36),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("New Collection"),
                      SizedBox(
                        height: 23,
                      ),
                      Text("HANG OUT & PARTY")
                    ],
                  ))),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/6279901/pexels-photo-6279901.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"))),
            height: 158,
            width: 119,
          )
        ],
      ),
    );
  }

  Widget _buildFeatureProducts() {
    return Padding(
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
              spacing: 20,
              children: List.generate(
                  scrollPageImageWithDetilsList.length,
                  (index) => Column(
                        children: [
                          Container(
                            height: 172,
                            width: 136,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        scrollPageImageWithDetilsList[index]
                                            ["url"]))),
                          ),
                          Text(
                            scrollPageImageWithDetilsList[index]["Name"],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            scrollPageImageWithDetilsList[index]["Price"],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
            ),
          )
        ],
      ),
    );
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
