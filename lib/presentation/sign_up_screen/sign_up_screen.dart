import 'package:al_madina_application/core/app_export.dart';
import 'package:al_madina_application/widgets/custom_outlined_button.dart';
import 'package:al_madina_application/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailAddressController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgShape,
                  height: 244.v,
                  width: 255.h,
                  alignment: Alignment.centerLeft,
                ),
                SizedBox(height: 60.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 122.h),
                    child: Text(
                      "Sign up",
                      style: theme.textTheme.headlineMedium,
                    ),
                  ),
                ),
                SizedBox(height: 57.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.h),
                  child: CustomTextFormField(
                    controller: emailAddressController,
                    hintText: "*********@gmail.com",
                    suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 24.v, 17.h, 13.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCheckmarkOnerror,
                        height: 13.v,
                        width: 18.h,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: 50.v,
                    ),
                  ),
                ),
                SizedBox(height: 24.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 31.h,
                    right: 29.h,
                  ),
                  child: CustomTextFormField(
                    controller: passwordController,
                    hintText: "Password",
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                    suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 27.v, 21.h, 11.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgPage1,
                        height: 12.v,
                        width: 18.h,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: 50.v,
                    ),
                    obscureText: true,
                    contentPadding: EdgeInsets.only(left: 1.h),
                  ),
                ),
                SizedBox(height: 26.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 32.h),
                    child: Text(
                      "Confirm password",
                      style: CustomTextStyles.titleSmallInterGray40001,
                    ),
                  ),
                ),
                SizedBox(height: 5.v),
                _buildPasswordSection(context),
                SizedBox(height: 68.v),
                _buildContinueSection(context),
                SizedBox(height: 23.v),
                CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 3.v,
                  width: 14.h,
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 53.h),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return SizedBox(
      height: 25.v,
      width: 315.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 22.v,
              width: 315.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPassword,
                    height: 22.v,
                    width: 315.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 1.h,
                        bottom: 1.v,
                      ),
                      child: Text(
                        "Password0012!",
                        style: CustomTextStyles.titleSmallInterBlack90002,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEyeHidden1,
            height: 17.v,
            width: 18.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(right: 21.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueSection(BuildContext context) {
    return SizedBox(
      height: 89.v,
      width: 315.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomOutlinedButton(
            width: 315.h,
            text: "Continue",
            buttonStyle: CustomButtonStyles.outlineIndigoA,
            buttonTextStyle: theme.textTheme.titleLarge!,
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 25.h),
              child: Text(
                "Sign up",
                style: CustomTextStyles.titleLargeWhiteA70001_1,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRightArrow1,
            height: 15.v,
            width: 19.h,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(
              right: 24.h,
              bottom: 7.v,
            ),
          ),
        ],
      ),
    );
  }
}
