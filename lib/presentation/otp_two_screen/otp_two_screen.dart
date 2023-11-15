import 'package:al_madina_application/core/app_export.dart';
import 'package:al_madina_application/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class OtpTwoScreen extends StatelessWidget {
  const OtpTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 32.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgOtpppp1,
                      height: 260.v,
                      width: 259.h),
                  SizedBox(height: 58.v),
                  Text("Phone number Verification",
                      style: theme.textTheme.headlineSmall),
                  SizedBox(height: 31.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Enter the OTP send to ",
                            style: CustomTextStyles.bodyLargeGray80001),
                        TextSpan(
                            text: "+96250505050",
                            style: CustomTextStyles
                                .titleMediumMontserratGray80001Bold)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 90.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup5IndigoA700,
                      height: 1.v,
                      width: 264.h),
                  SizedBox(height: 44.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Didn’t you recieve the OTP ? ",
                            style: CustomTextStyles.bodyMediumGray40001_1),
                        TextSpan(
                            text: "Resend OTP",
                            style: theme.textTheme.bodyMedium)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 40.v),
                  CustomOutlinedButton(
                      text: "Verify",
                      margin: EdgeInsets.symmetric(horizontal: 13.h),
                      buttonTextStyle: theme.textTheme.titleLarge!,
                      onPressed: () {
                        onTapVerify(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapVerify(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
