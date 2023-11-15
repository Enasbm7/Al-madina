import '../submit_screen/widgets/submitgrid_item_widget.dart';
import 'package:al_madina_application/core/app_export.dart';
import 'package:al_madina_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:al_madina_application/widgets/app_bar/appbar_title.dart';
import 'package:al_madina_application/widgets/app_bar/appbar_trailing_image.dart';
import 'package:al_madina_application/widgets/app_bar/custom_app_bar.dart';
import 'package:al_madina_application/widgets/custom_elevated_button.dart';
import 'package:al_madina_application/widgets/custom_search_view.dart';
import 'package:al_madina_application/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SubmitScreen extends StatelessWidget {
  SubmitScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController twoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 9.v),
                  Padding(
                      padding: EdgeInsets.only(left: 16.h, right: 23.h),
                      child: CustomSearchView(
                          controller: searchController,
                          hintText: "Search for a complaint type")),
                  SizedBox(height: 29.v),
                  SizedBox(
                      height: 621.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.center, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse2,
                            height: 339.v,
                            width: 320.h,
                            alignment: Alignment.bottomRight),
                        SizedBox(
                            width: double.maxFinite,
                            child: Align(
                                alignment: Alignment.center,
                                child: Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 11.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 9.h, vertical: 19.v),
                                    decoration: AppDecoration.outlineBlack900
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .customBorderTL24),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(height: 23.v),
                                          _buildSubmitGrid(context)
                                        ])))),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30.h, vertical: 16.v),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ImageConstant.imgGroup11),
                                        fit: BoxFit.cover)),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                          width: 139.h,
                                          child: Divider(
                                              color: appTheme.whiteA70001)),
                                      SizedBox(height: 61.v),
                                      CustomTextFormField(
                                          controller: addressController,
                                          hintText: "Select Address",
                                          hintStyle: CustomTextStyles
                                              .bodyLargePoppinsBlack90002,
                                          prefix: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  9.h, 13.v, 8.h, 16.v),
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgLocation,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize)),
                                          prefixConstraints:
                                              BoxConstraints(maxHeight: 53.v),
                                          contentPadding: EdgeInsets.only(
                                              top: 14.v,
                                              right: 30.h,
                                              bottom: 14.v),
                                          borderDecoration:
                                              TextFormFieldStyleHelper
                                                  .fillWhiteA,
                                          filled: true,
                                          fillColor: appTheme.whiteA70001),
                                      SizedBox(height: 23.v),
                                      CustomTextFormField(
                                          controller: twoController,
                                          hintText: "Write your complaint ...",
                                          hintStyle: CustomTextStyles
                                              .bodyLargePoppinsGray500,
                                          textInputAction: TextInputAction.done,
                                          maxLines: 9,
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 15.h, vertical: 20.v),
                                          borderDecoration:
                                              TextFormFieldStyleHelper
                                                  .fillWhiteATL25,
                                          filled: true,
                                          fillColor: appTheme.whiteA70001),
                                      SizedBox(height: 19.v),
                                      _buildUploadPictureColumn(context),
                                      SizedBox(height: 39.v),
                                      CustomElevatedButton(
                                          text: "Submit",
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 29.h)),
                                      SizedBox(height: 15.v)
                                    ])))
                      ]))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 61.v,
        leadingWidth: 30.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimarycontainer,
            margin: EdgeInsets.only(left: 6.h, top: 16.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(text: "Back", margin: EdgeInsets.only(left: 5.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMenu,
              margin: EdgeInsets.fromLTRB(31.h, 24.v, 31.h, 20.v))
        ]);
  }

  /// Section Widget
  Widget _buildSubmitGrid(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 161.v,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.h,
                    crossAxisSpacing: 10.h),
                physics: BouncingScrollPhysics(),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return SubmitgridItemWidget();
                })));
  }

  /// Section Widget
  Widget _buildUploadPictureColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 89.h, vertical: 10.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder25),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgUpp1, height: 39.v, width: 44.h),
              SizedBox(height: 5.v),
              Text("Upload a picture",
                  style: CustomTextStyles.titleMediumGray40001),
              SizedBox(height: 2.v)
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
