import '../homepage_screen/widgets/homepagegrid_item_widget.dart';
import 'package:al_madina_application/core/app_export.dart';
import 'package:al_madina_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:al_madina_application/widgets/app_bar/appbar_title.dart';
import 'package:al_madina_application/widgets/app_bar/custom_app_bar.dart';
import 'package:al_madina_application/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomepageScreen extends StatelessWidget {
  HomepageScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                height: 775.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomRight, children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          padding: EdgeInsets.symmetric(vertical: 21.v),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgShape),
                                  fit: BoxFit.cover)),
                          child: _buildAppBar(context))),
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse2,
                      height: 339.v,
                      width: 320.h,
                      alignment: Alignment.bottomRight),
                  _buildHomepageGrid(context),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: EdgeInsets.only(top: 71.v),
                          child: CustomSearchView(
                              width: 336.h,
                              controller: searchController,
                              hintText: "Search for a complaint type",
                              alignment: Alignment.topCenter))),
                  CustomImageView(
                      imagePath: ImageConstant.imgMenu,
                      height: 11.v,
                      width: 23.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 30.v, right: 30.h))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 30.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimarycontainer,
            margin: EdgeInsets.only(left: 6.h),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(text: "Back", margin: EdgeInsets.only(left: 5.h)));
  }

  /// Section Widget
  Widget _buildHomepageGrid(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            decoration: AppDecoration.outlineBlack900
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL24),
            margin: EdgeInsets.fromLTRB(11.h, 174.v, 11.h, 31.v),
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
                  return HomepagegridItemWidget();
                })));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
