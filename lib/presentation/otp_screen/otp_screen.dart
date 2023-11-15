import 'package:al_madina_application/core/app_export.dart';
import 'package:al_madina_application/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 27.h,
            vertical: 55.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgOtpppp1,
                height: 260.v,
                width: 259.h,
              ),
              SizedBox(height: 38.v),
              Text(
                " Email Verification",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 30.v),
              Text(
                "Enter the OTP sent to your Email",
                style: CustomTextStyles.bodyLargeGray8000116,
              ),
              SizedBox(height: 89.v),
              CustomImageView(
                imagePath: ImageConstant.imgGroup5,
                height: 1.v,
                width: 264.h,
              ),
              SizedBox(height: 44.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Didn’t you recieve the OTP ? ",
                      style: CustomTextStyles.bodyMediumGray40001_1,
                    ),
                    TextSpan(
                      text: "Resend OTP",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 51.v),
              CustomOutlinedButton(
                text: "Verify",
                margin: EdgeInsets.only(right: 6.h),
                buttonTextStyle: theme.textTheme.titleLarge!,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
