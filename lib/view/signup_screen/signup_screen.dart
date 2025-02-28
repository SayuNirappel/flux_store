import 'package:flutter/material.dart';
import 'package:flux_store/global_widgets/custom_textfield.dart';
import 'package:flux_store/global_widgets/reusable_buttons.dart';
import 'package:flux_store/utils/constants/color_constants.dart';
import 'package:flux_store/view/login_screen/login_screen.dart';

void main() {}

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  TextEditingController conpasscontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            controller: namecontroller,
            htext: "Enter Your Name",
          ),
          Custom_textfiels(
            controller: emailcontroller,
            htext: "Email address",
          ),
          Custom_textfiels(
            controller: passcontroller,
            htext: "Password",
          ),
          Custom_textfiels(
            controller: conpasscontroller,
            htext: "Confirm Password",
            bheight: 44,
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
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("or Login with"),
              Row(
                children: [],
              ),
              Row(
                children: [
                  Text("Already have account"),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: Text("Log In"))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
