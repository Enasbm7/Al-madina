import 'package:al_madina_application/core/app_export.dart';
import 'package:al_madina_application/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class LocationDialog extends StatelessWidget {
  const LocationDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 340.h,
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 56.v,
      ),
      decoration: AppDecoration.outlineBlack900023.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 110.adaptSize,
            width: 110.adaptSize,
            padding: EdgeInsets.all(43.h),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: fs.Svg(
                  ImageConstant.imgLocationOnerrorcontainer,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgLocation,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 27.v),
          Text(
            "Enable your location",
            style: CustomTextStyles.headlineSmallPoppinsGray800,
          ),
          SizedBox(height: 5.v),
          Container(
            width: 262.h,
            margin: EdgeInsets.symmetric(horizontal: 32.h),
            child: Text(
              "Choose your location to start find the request around you",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleSmallGray50001.copyWith(
                height: 1.36,
              ),
            ),
          ),
          SizedBox(height: 37.v),
          CustomOutlinedButton(
            height: 54.v,
            text: "Use my location",
            margin: EdgeInsets.only(left: 18.h),
            buttonStyle: CustomButtonStyles.outlineBlackTL8,
            buttonTextStyle: CustomTextStyles.titleMediumBlack90002,
            alignment: Alignment.centerRight,
          ),
          SizedBox(height: 32.v),
        ],
      ),
    );
  }
}
