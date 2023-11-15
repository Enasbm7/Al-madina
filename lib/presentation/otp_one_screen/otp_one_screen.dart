import 'package:al_madina_application/core/app_export.dart';
import 'package:al_madina_application/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class OtpOneScreen extends StatelessWidget {
  const OtpOneScreen({Key? key})
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
            horizontal: 26.h,
            vertical: 55.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgOtpppp1,
                height: 260.v,
                width: 259.h,
              ),
              SizedBox(height: 38.v),
              Text(
                "Email Verification",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 28.v),
              Container(
                width: 302.h,
                margin: EdgeInsets.only(
                  left: 7.h,
                  right: 13.h,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "We will sent you a one-time password \nto this  Email: ",
                        style: CustomTextStyles.bodyLargeGray80001.copyWith(
                          height: 1.50,
                        ),
                      ),
                      TextSpan(
                        text: "test11@gmail.com",
                        style:
                            CustomTextStyles.titleMediumMontserratBlack90002_1,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 52.v),
              CustomOutlinedButton(
                text: "Continue",
                margin: EdgeInsets.only(right: 8.h),
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
