import 'package:al_madina_application/core/app_export.dart';
import 'package:al_madina_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:al_madina_application/widgets/app_bar/appbar_trailing_image.dart';
import 'package:al_madina_application/widgets/app_bar/custom_app_bar.dart';
import 'package:al_madina_application/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class LocationOneScreen extends StatelessWidget {
  LocationOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA70001,
            border: Border.all(
              color: appTheme.black90002.withOpacity(0.2),
              width: 1.h,
            ),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgLocationOne,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 18.v),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup11,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 4.v,
                          width: 47.h,
                          decoration: BoxDecoration(
                            color: appTheme.whiteA70001,
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Select Address",
                          style: CustomTextStyles.titleLargeWhiteA70001,
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 29.h,
                            right: 31.h,
                          ),
                          child: CustomSearchView(
                            controller: searchController,
                            hintText: "Search",
                            alignment: Alignment.center,
                            borderDecoration: SearchViewStyleHelper.fillIndigo,
                            fillColor: appTheme.indigo900,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.v),
                      Padding(
                        padding: EdgeInsets.only(left: 37.h),
                        child: Text(
                          "Recent places",
                          style: CustomTextStyles.titleMediumWhiteA70001,
                        ),
                      ),
                      SizedBox(height: 73.v),
                      _buildOfficeRow(context),
                      SizedBox(height: 22.v),
                      Padding(
                        padding: EdgeInsets.only(left: 13.h),
                        child: _buildSeventyThree(
                          context,
                          locationName: "Jordan University Hospital ",
                          distance: "3.1km",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 43.h),
                        child: Text(
                          "Queen Rania Al-Abdullah Street – Aljubeiha.",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      SizedBox(height: 18.v),
                      _buildOfficeRow1(context),
                      SizedBox(height: 18.v),
                      Padding(
                        padding: EdgeInsets.only(left: 13.h),
                        child: _buildSeventyThree(
                          context,
                          locationName: "The Boulevard",
                          distance: "8.5km",
                        ),
                      ),
                      SizedBox(height: 1.v),
                      Padding(
                        padding: EdgeInsets.only(left: 43.h),
                        child: Text(
                          "Abdali Project , Amman, Jordan.",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      SizedBox(height: 5.v),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 68.v,
      leadingWidth: 50.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgLeftArrow1,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 17.v,
          bottom: 17.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMenu,
          margin: EdgeInsets.fromLTRB(18.h, 18.v, 18.h, 26.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildOfficeRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 13.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLocationWhiteA70001,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 1.v,
              bottom: 18.v,
            ),
          ),
          Container(
            height: 41.v,
            width: 269.h,
            margin: EdgeInsets.only(
              left: 6.h,
              top: 1.v,
            ),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Queen Rania Al Abdullah St Amman , Jordan.",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "The University Of Jordan ",
                    style: CustomTextStyles.titleMediumWhiteA70001,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 21.h,
              bottom: 22.v,
            ),
            child: Text(
              "2.2km",
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOfficeRow1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 13.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLocationWhiteA70001,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(bottom: 19.v),
          ),
          Container(
            height: 42.v,
            width: 204.h,
            margin: EdgeInsets.only(
              left: 6.h,
              top: 2.v,
            ),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "King Abdulla II St. Amman, Jordan.",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "City Mall",
                    style: CustomTextStyles.titleMediumWhiteA70001,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 23.v),
            child: Text(
              "6.9km",
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSeventyThree(
    BuildContext context, {
    required String locationName,
    required String distance,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgLocationWhiteA70001,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Text(
            locationName,
            style: CustomTextStyles.titleMediumWhiteA70001.copyWith(
              color: appTheme.whiteA70001,
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(bottom: 4.v),
          child: Text(
            distance,
            style: theme.textTheme.titleSmall!.copyWith(
              color: appTheme.whiteA70001,
            ),
          ),
        ),
      ],
    );
  }
}
