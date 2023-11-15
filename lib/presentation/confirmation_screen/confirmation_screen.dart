import 'package:al_madina_application/core/app_export.dart';
import 'package:al_madina_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:al_madina_application/widgets/app_bar/appbar_subtitle.dart';
import 'package:al_madina_application/widgets/app_bar/custom_app_bar.dart';
import 'package:al_madina_application/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 35.v),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Spacer(flex: 42),
                  Container(
                      height: 110.adaptSize,
                      width: 110.adaptSize,
                      padding: EdgeInsets.symmetric(
                          horizontal: 31.h, vertical: 38.v),
                      decoration: AppDecoration.fillLightBlue.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder55),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgCheckmarkWhiteA70001,
                          height: 33.v,
                          width: 46.h,
                          alignment: Alignment.center)),
                  SizedBox(height: 25.v),
                  Text("Thank You",
                      style:
                          CustomTextStyles.titleMediumMontserratIndigoA70003),
                  SizedBox(height: 4.v),
                  SizedBox(
                      width: 210.h,
                      child: Text("Your complaint was successfully submitted.",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyLargeIndigoA70003
                              .copyWith(height: 1.50))),
                  Spacer(flex: 57),
                  _buildBackHome(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 27.v,
        leadingWidth: 42.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 6.v, bottom: 6.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "Transfer"));
  }

  /// Section Widget
  Widget _buildBackHome(BuildContext context) {
    return SizedBox(
        height: 86.v,
        width: 315.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRightArrow1,
              height: 25.v,
              width: 31.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(right: 42.h)),
          CustomOutlinedButton(
              width: 315.h,
              text: "Back Home",
              buttonStyle: CustomButtonStyles.outlineBlack,
              onPressed: () {
                onTapBackHome(context);
              },
              alignment: Alignment.bottomCenter)
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the homepageScreen when the action is triggered.
  onTapBackHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageScreen);
  }
}
