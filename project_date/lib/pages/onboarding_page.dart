import 'package:dating_app/components/box_button.dart';
import 'package:dating_ap/components/onboarding_slide.dart';
import 'package:dating_app/pages/dashboard_page.dart';
import 'package:dating_app/theme/color.dart';
import 'package:dating_app/utils/constant.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OnBoardingSlide(),
          SizedBox(
            height: defaultPadding * 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding * 2),
            child: Column(
              children: [
                BoxButton(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) => DashboardPage()),
                        (route) => false);
                  },
                  text: "Create an account",
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    SizedBox(
                      width: defaultSmallPadding,
                    ),
                    Text(
                      "Sign In",
                      style: TextStyle(
                          color: primary, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
