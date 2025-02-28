import 'package:flutter/material.dart';
import 'package:flux_store/utils/constants/image_constants.dart';

void main() {}

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightGreenAccent,
      ),
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
        BottomNavigationBarItem(
            icon: Image.asset(ImageConstants.inactivehomeIcon),
            activeIcon: Image.asset(ImageConstants.activehomeIcon),
            label: ""),
        BottomNavigationBarItem(
            icon: Image.asset(ImageConstants.inactivesearchIcon),
            activeIcon: Image.asset(ImageConstants.activesearchIcon),
            label: ""),
        BottomNavigationBarItem(
            icon: Image.asset(ImageConstants.inactivehomeIcon),
            activeIcon: Image.asset(ImageConstants.activehomeIcon),
            label: ""),
        BottomNavigationBarItem(
            icon: Image.asset(ImageConstants.inactivehomeIcon),
            activeIcon: Image.asset(ImageConstants.activehomeIcon),
            label: "")
      ]),
    );
  }
}
