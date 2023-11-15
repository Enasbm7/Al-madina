import '../menu_screen/widgets/menugrid_item_widget.dart';
import 'package:al_madina_application/core/app_export.dart';
import 'package:al_madina_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:al_madina_application/widgets/app_bar/appbar_title.dart';
import 'package:al_madina_application/widgets/app_bar/custom_app_bar.dart';
import 'package:al_madina_application/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 255.h,
                          margin: EdgeInsets.only(left: 2.h, right: 118.h),
                          padding: EdgeInsets.symmetric(vertical: 21.v),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgShape),
                                  fit: BoxFit.cover)),
                          child: _buildAppBar(context)),
                      SizedBox(
                          height: 566.v,
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.topRight, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                    height: 744.v,
                                    width: 361.h,
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse2,
                                              height: 338.v,
                                              width: 318.h,
                                              alignment: Alignment.bottomRight),
                                          SizedBox(
                                              width: double.maxFinite,
                                              child: Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Container(
                                                      margin: EdgeInsets.only(
                                                          right: 9.h,
                                                          bottom: 30.v),
                                                      padding: EdgeInsets.symmetric(
                                                          horizontal: 9.h,
                                                          vertical: 19.v),
                                                      decoration: AppDecoration
                                                          .outlineBlack900
                                                          .copyWith(
                                                              borderRadius: BorderRadiusStyle
                                                                  .customBorderTL24),
                                                      child: Column(
                                                          mainAxisSize: MainAxisSize.min,
                                                          children: [
                                                            SizedBox(
                                                                height: 23.v),
                                                            _buildMenuGrid(
                                                                context)
                                                          ])))),
                                          _buildSearchRow(context),
                                          CustomImageView(
                                              imagePath: ImageConstant.imgMenu,
                                              height: 11.v,
                                              width: 23.h,
                                              alignment: Alignment.topRight,
                                              margin:
                                                  EdgeInsets.only(right: 28.h))
                                        ]))),
                            _buildMenuHorizontalScroll(context)
                          ]))
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 32.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimarycontainer,
            margin: EdgeInsets.only(left: 8.h),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(text: "Back", margin: EdgeInsets.only(left: 5.h)));
  }

  /// Section Widget
  Widget _buildMenuGrid(BuildContext context) {
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
                  return MenugridItemWidget();
                })));
  }

  /// Section Widget
  Widget _buildSearchRow(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: Container(
            margin: EdgeInsets.fromLTRB(4.h, 41.v, 21.h, 649.v),
            padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 12.v),
            decoration: AppDecoration.outlineBlack90002
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Row(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgSearch,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 1.v)),
              Padding(
                  padding: EdgeInsets.only(left: 10.h, top: 1.v),
                  child: Text("Search for a complaint type",
                      style: CustomTextStyles.titleMediumBlack90002))
            ])));
  }

  /// Section Widget
  Widget _buildMenuHorizontalScroll(BuildContext context) {
    return Align(
        alignment: Alignment.topRight,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 83.h),
            child: IntrinsicWidth(
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 29.v),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(ImageConstant.imgGroup8),
                            fit: BoxFit.cover)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(right: 28.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 25.v, bottom: 4.v),
                                        child: Text("user name",
                                            style: CustomTextStyles
                                                .titleMediumMontserratBlack90002Bold)),
                                    Container(
                                        height: 50.adaptSize,
                                        width: 50.adaptSize,
                                        margin: EdgeInsets.only(left: 17.h),
                                        decoration: BoxDecoration(
                                            color: appTheme.gray10002,
                                            borderRadius:
                                                BorderRadius.circular(18.h),
                                            border: Border.all(
                                                color: appTheme.black90002,
                                                width: 1.h),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: appTheme.black90002
                                                      .withOpacity(0.2),
                                                  spreadRadius: 2.h,
                                                  blurRadius: 2.h,
                                                  offset: Offset(0, 4.05))
                                            ]))
                                  ])),
                          SizedBox(height: 113.v),
                          Padding(
                              padding: EdgeInsets.only(left: 22.h),
                              child: _buildEightyFive(context,
                                  complaintStatus: "Profile")),
                          SizedBox(height: 22.v),
                          Padding(
                              padding: EdgeInsets.only(left: 22.h),
                              child: _buildEightyFive(context,
                                  complaintStatus: "Complaint Status")),
                          SizedBox(height: 16.v),
                          Padding(
                              padding: EdgeInsets.only(left: 22.h),
                              child: _buildEightyFive(context,
                                  complaintStatus: "Change Password")),
                          SizedBox(height: 14.v),
                          Container(
                              width: 267.h,
                              margin: EdgeInsets.only(left: 25.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 17.h, vertical: 15.v),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8,
                                  image: DecorationImage(
                                      image:
                                          AssetImage(ImageConstant.imgGroup82),
                                      fit: BoxFit.cover)),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgArrowLeftOnprimarycontainer,
                                        height: 15.v,
                                        width: 8.h,
                                        margin: EdgeInsets.only(
                                            top: 10.v, bottom: 2.v)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 61.h, top: 6.v),
                                        child: Text("Language",
                                            style: theme.textTheme.bodyLarge))
                                  ])),
                          SizedBox(height: 16.v),
                          SizedBox(
                              height: 60.v,
                              width: 317.h,
                              child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            width: 270.h,
                                            margin:
                                                EdgeInsets.only(right: 47.h),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 19.v),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8,
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        ImageConstant
                                                            .imgGroup82),
                                                    fit: BoxFit.cover)),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgArrowLeftOnprimarycontainer,
                                                      height: 15.v,
                                                      width: 8.h,
                                                      margin: EdgeInsets.only(
                                                          left: 24.h,
                                                          top: 5.v)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgPayments,
                                                      height: 12.v,
                                                      width: 7.h,
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              vertical: 4.v))
                                                ]))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 117.h),
                                            child: Text("Help",
                                                style:
                                                    theme.textTheme.bodyLarge)))
                                  ])),
                          SizedBox(height: 98.v),
                          CustomOutlinedButton(
                              text: "Sign  Out",
                              margin: EdgeInsets.only(left: 48.h, right: 23.h),
                              rightIcon: Container(
                                  padding: EdgeInsets.fromLTRB(
                                      30.h, 23.v, 30.h, 27.v),
                                  margin: EdgeInsets.only(),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(28.h),
                                      border: Border.all(
                                          color: theme.colorScheme.primary,
                                          width: 1.h)),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgLogOut1,
                                      height: 22.v,
                                      width: 21.h)),
                              buttonTextStyle:
                                  CustomTextStyles.titleLargePrimary),
                          SizedBox(height: 14.v)
                        ])))));
  }

  /// Common widget
  Widget _buildEightyFive(
    BuildContext context, {
    required String complaintStatus,
  }) {
    return Container(
        width: 270.h,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 17.v),
        decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder8,
            image: DecorationImage(
                image: AssetImage(ImageConstant.imgGroup82),
                fit: BoxFit.cover)),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeftOnprimarycontainer,
              height: 15.v,
              width: 8.h,
              margin: EdgeInsets.symmetric(vertical: 4.v)),
          Padding(
              padding: EdgeInsets.only(left: 26.h, top: 2.v),
              child: Text(complaintStatus,
                  style: theme.textTheme.bodyLarge!
                      .copyWith(color: appTheme.indigoA70002)))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
