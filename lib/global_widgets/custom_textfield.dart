import 'package:flutter/material.dart';
import 'package:flux_store/utils/constants/color_constants.dart';

class Custom_textfiels extends StatelessWidget {
  final String htext;
  final double bheight;
  final TextEditingController? controller;

  const Custom_textfiels(
      {super.key, required this.htext, this.bheight = 20, this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bheight),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            hintText: htext,
            hintStyle: TextStyle(fontSize: 14, color: ColorConstants.kofblack)),
        onTapOutside: (event) {
          FocusScope.of(context).unfocus();
        },
      ),
    );
  }
}
