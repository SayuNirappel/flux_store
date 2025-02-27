import 'package:flutter/material.dart';
import 'package:flux_store/utils/constants/color_constants.dart';

class custom_textfiels extends StatelessWidget {
  final String htext;
  final double bheight;
  const custom_textfiels({
    super.key,
    required this.htext,
    this.bheight = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bheight),
      child: TextFormField(
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
