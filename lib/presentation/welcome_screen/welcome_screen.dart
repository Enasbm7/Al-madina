import 'package:al_madina_application/core/app_export.dart';
import 'package:al_madina_application/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgShape,
                      height: 236.v,
                      width: 264.h,
                      alignment: Alignment.centerLeft),
                  Spacer(flex: 35),
                  Text(" Language ", style: theme.textTheme.headlineMedium),
                  SizedBox(height: 33.v),
                  CustomOutlinedButton(
                      text: "English",
                      margin: EdgeInsets.only(left: 28.h, right: 32.h),
                      onPressed: () {
                        onTapEnglish(context);
                      }),
                  SizedBox(height: 13.v),
                  CustomOutlinedButton(
                      text: "العربية",
                      margin: EdgeInsets.only(left: 28.h, right: 32.h),
                      onPressed: () {
                        onTaptf(context);
                      }),
                  Spacer(flex: 64)
                ]))));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapEnglish(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
