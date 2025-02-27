import 'package:flutter/material.dart';
import 'package:flux_store/global_widgets/custom_textfield.dart';
import 'package:flux_store/global_widgets/reusable_buttons.dart';
import 'package:flux_store/utils/constants/color_constants.dart';

void main() {}

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 58,
          ),
          Text(
            "Create\nYour Account",
            style:
                TextStyle(fontSize: 24, height: 2, fontWeight: FontWeight.bold),
          ),
          custom_textfiels(
            htext: "Enter Your Name",
          ),
          custom_textfiels(
            htext: "Email address",
          ),
          custom_textfiels(
            htext: "Password",
          ),
          custom_textfiels(
            htext: "Confirm Password",
            bheight: 44,
          ),
          ReusableButton(
            fcolor: ColorConstants.white,
            bgcolor: ColorConstants.black,
            bcolor: ColorConstants.black,
            name: "Sign Up",
            onClickButton: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => SignupScreen()));
            },
          ),
        ],
      ),
    );
  }
}
