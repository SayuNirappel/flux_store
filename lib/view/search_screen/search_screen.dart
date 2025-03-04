import 'package:flutter/material.dart';

void main() {}

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      endDrawer: Drawer(),
      appBar: AppBar(),
      body: Container(
        child: Text("Search Screen"),
      ),
    );
  }
}
