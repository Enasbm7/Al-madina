import 'package:al_madina_application/core/app_export.dart';
import 'package:al_madina_application/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class WelcomeOneScreen extends StatelessWidget {
  const WelcomeOneScreen({Key? key}) : super(key: key);

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
                      height: 239.v,
                      width: 255.h,
                      alignment: Alignment.centerLeft),
                  Spacer(flex: 37),
                  Text("Welcome!",
                      style: CustomTextStyles.headlineMediumBlack90002),
                  SizedBox(height: 11.v),
                  Container(
                      width: 343.h,
                      margin: EdgeInsets.only(left: 17.h, right: 14.h),
                      child: Text(
                          "Join Al-Madina community to start using\n our services",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleMediumMontserratGray80001
                              .copyWith(height: 1.50))),
                  SizedBox(height: 44.v),
                  CustomOutlinedButton(
                      text: "Sign  Up",
                      margin: EdgeInsets.only(left: 32.h, right: 28.h),
                      onPressed: () {
                        onTapSignUp(context);
                      }),
                  SizedBox(height: 19.v),
                  Container(
                      width: 271.h,
                      margin: EdgeInsets.symmetric(horizontal: 52.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "\n",
                                style: CustomTextStyles
                                    .titleMediumMontserratGray80001Bold
                                    .copyWith(height: 1.50)),
                            TextSpan(
                                text: "Already have an account? sign in.",
                                style: CustomTextStyles.bodyLargeGray900)
                          ]),
                          textAlign: TextAlign.center)),
                  Spacer(flex: 62)
                ]))));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
