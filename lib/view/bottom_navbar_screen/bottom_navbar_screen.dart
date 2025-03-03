import 'package:flutter/material.dart';
import 'package:flux_store/utils/constants/image_constants.dart';

void main() {}

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        color: Colors.lightGreenAccent,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          boxShadow: [
            BoxShadow(color: Colors.black45, blurRadius: 3),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            currentIndex: selectedIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(ImageConstants.inactivehomeIcon),
                activeIcon: Image.asset(ImageConstants.activehomeIcon),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(ImageConstants.inactivesearchIcon),
                activeIcon: Image.asset(ImageConstants.activesearchIcon),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(ImageConstants.inactivehomeIcon),
                activeIcon: Image.asset(ImageConstants.activehomeIcon),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(ImageConstants.inactivehomeIcon),
                activeIcon: Image.asset(ImageConstants.activehomeIcon),
                label: "",
              ),
            ],
          ),
        ),
      ),
    );
    //
  }
}
