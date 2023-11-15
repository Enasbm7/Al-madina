import 'package:al_madina_application/core/app_export.dart';
import 'package:al_madina_application/widgets/custom_outlined_button.dart';
import 'package:al_madina_application/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: 242.v,
                              width: 252.h,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 52.h, bottom: 47.v),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgWhite,
                                                  height: 59.v,
                                                  width: 60.h),
                                              SizedBox(height: 5.v),
                                              SizedBox(
                                                  width: 134.h,
                                                  child: Text("Welcome \nBack",
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: CustomTextStyles
                                                          .headlineMediumWhiteA70001))
                                            ]))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgShape,
                                    height: 242.v,
                                    width: 252.h,
                                    alignment: Alignment.center)
                              ])),
                          SizedBox(height: 89.v),
                          Padding(
                              padding: EdgeInsets.only(left: 31.h),
                              child: Text("Sign In",
                                  style: theme.textTheme.headlineMedium)),
                          SizedBox(height: 38.v),
                          Padding(
                              padding: EdgeInsets.only(left: 32.h),
                              child: Text("Phone number",
                                  style: CustomTextStyles
                                      .bodyMediumMontserratGray40001)),
                          SizedBox(height: 9.v),
                          Padding(
                              padding: EdgeInsets.only(left: 32.h),
                              child: Text("+962",
                                  style: CustomTextStyles
                                      .titleMediumMontserratBlack90002)),
                          SizedBox(height: 1.v),
                          Align(
                              alignment: Alignment.center,
                              child: Divider(indent: 32.h, endIndent: 28.h)),
                          SizedBox(height: 15.v),
                          Padding(
                              padding: EdgeInsets.only(left: 30.h, right: 28.h),
                              child: CustomTextFormField(
                                  controller: emailAddressController,
                                  hintText: "*********@gmail.com",
                                  alignment: Alignment.center,
                                  suffix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 24.v, 17.h, 13.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgCheckmark,
                                          height: 13.v,
                                          width: 18.h)),
                                  suffixConstraints:
                                      BoxConstraints(maxHeight: 50.v))),
                          SizedBox(height: 15.v),
                          Padding(
                              padding: EdgeInsets.only(left: 31.h, right: 28.h),
                              child: CustomTextFormField(
                                  controller: passwordController,
                                  hintText: "Password",
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  alignment: Alignment.center,
                                  suffix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 27.v, 21.h, 11.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgPage1,
                                          height: 12.v,
                                          width: 18.h)),
                                  suffixConstraints:
                                      BoxConstraints(maxHeight: 50.v),
                                  obscureText: true,
                                  contentPadding: EdgeInsets.only(left: 1.h))),
                          SizedBox(height: 16.v),
                          Container(
                              margin: EdgeInsets.only(left: 30.h),
                              decoration: AppDecoration.outlineBlack,
                              child: Text("Forgot Password?",
                                  style: CustomTextStyles.bodyMediumGray80001)),
                          SizedBox(height: 47.v),
                          _buildSignInStack(context),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Section Widget
  Widget _buildSignInStack(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: SizedBox(
            height: 86.v,
            width: 315.h,
            child: Stack(alignment: Alignment.bottomRight, children: [
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 25.h),
                      child: Text("Sign In",
                          style: CustomTextStyles.titleLargeWhiteA70001_1))),
              CustomImageView(
                  imagePath: ImageConstant.imgRightArrow1,
                  height: 15.v,
                  width: 19.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(right: 24.h, bottom: 7.v)),
              CustomOutlinedButton(
                  width: 315.h,
                  text: "Sign  In",
                  buttonTextStyle: theme.textTheme.titleLarge!,
                  onPressed: () {
                    onTapSignIn(context);
                  },
                  alignment: Alignment.topCenter)
            ])));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
