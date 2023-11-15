import 'package:al_madina_application/core/app_export.dart';
import 'package:al_madina_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:al_madina_application/widgets/app_bar/appbar_subtitle.dart';
import 'package:al_madina_application/widgets/app_bar/custom_app_bar.dart';
import 'package:al_madina_application/widgets/custom_search_view.dart';
import 'package:al_madina_application/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class NotificationScreen extends StatelessWidget {
  NotificationScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController fortyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.h),
                      child: CustomSearchView(
                          controller: searchController,
                          hintText: "Search in notifications",
                          borderDecoration: SearchViewStyleHelper.fillGray,
                          fillColor: appTheme.gray10001)),
                  SizedBox(height: 31.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 246.h,
                          margin: EdgeInsets.only(left: 5.h, right: 74.h),
                          child: Text("You can check your notification here",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.headlineSmall))),
                  SizedBox(height: 49.v),
                  Padding(
                      padding: EdgeInsets.only(right: 9.h),
                      child: CustomTextFormField(
                          controller: dateController,
                          hintText: "Your complaint status is updated ",
                          hintStyle: CustomTextStyles.bodyLargeBlack90002,
                          borderDecoration:
                              TextFormFieldStyleHelper.underLineGray)),
                  SizedBox(height: 31.v),
                  Padding(
                      padding: EdgeInsets.only(left: 3.h, right: 6.h),
                      child: CustomTextFormField(
                          controller: fortyController,
                          hintText: "You submitted a complaint ",
                          hintStyle: CustomTextStyles.bodyLargeBlack90002,
                          textInputAction: TextInputAction.done,
                          borderDecoration:
                              TextFormFieldStyleHelper.underLineGray)),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 23.v,
        leadingWidth: 42.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 2.v, bottom: 3.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "Transfer"));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
