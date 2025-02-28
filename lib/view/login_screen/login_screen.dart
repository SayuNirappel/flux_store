import 'package:flutter/material.dart';
import 'package:flux_store/global_widgets/custom_textfield.dart';
import 'package:flux_store/global_widgets/reusable_buttons.dart';
import 'package:flux_store/utils/constants/color_constants.dart';
import 'package:flux_store/view/bottom_navbar_screen/bottom_navbar_screen.dart';
import 'package:flux_store/view/signup_screen/signup_screen.dart';

void main() {}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 58,
          ),
          Text(
            "Create\nYour Account",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 24,
              height: 2,
              fontWeight: FontWeight.bold,
            ),
          ),
          Custom_textfiels(
            controller: emailcontroller,
            htext: "Email address",
          ),
          Custom_textfiels(
            controller: passcontroller,
            htext: "Password",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ReusableButton(
                fcolor: ColorConstants.white,
                bgcolor: ColorConstants.black,
                bcolor: ColorConstants.black,
                name: "Sign Up",
                onClickButton: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomNavbarScreen()));
                },
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("or Sign Up with"),
              Row(
                children: [],
              ),
              Row(
                children: [
                  Text("Don't have account"),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupScreen()));
                      },
                      child: Text("Sign Up"))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
