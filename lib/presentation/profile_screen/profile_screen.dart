import 'package:al_madina_application/core/app_export.dart';
import 'package:al_madina_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:al_madina_application/widgets/app_bar/appbar_title_image.dart';
import 'package:al_madina_application/widgets/app_bar/custom_app_bar.dart';
import 'package:al_madina_application/widgets/custom_outlined_button.dart';
import 'package:al_madina_application/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController usernameController = TextEditingController();

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController eighteenController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 50.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 17.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "Username",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
              _buildUsername(context),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "First Name",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
              _buildFirstName(context),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "Last Name",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
              _buildLastName(context),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "Date of Birth",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
              _buildEighteen1(context),
              Spacer(),
              _buildSave(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 141.v,
      leadingWidth: 50.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgRightArrow1,
        margin: EdgeInsets.only(
          left: 24.h,
          bottom: 90.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgWhite100x100,
      ),
    );
  }

  /// Section Widget
  Widget _buildUsername(BuildContext context) {
    return CustomTextFormField(
      controller: usernameController,
    );
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return CustomTextFormField(
      controller: firstNameController,
    );
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return CustomTextFormField(
      controller: lastNameController,
    );
  }

  /// Section Widget
  Widget _buildEighteen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: CustomTextFormField(
        controller: eighteenController,
        textInputAction: TextInputAction.done,
        borderDecoration: TextFormFieldStyleHelper.underLineBlack,
      ),
    );
  }

  /// Section Widget
  Widget _buildEighteen1(BuildContext context) {
    return Container(
      width: 362.h,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 34.v),
          _buildEighteen(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomOutlinedButton(
      width: 241.h,
      text: "Save",
      buttonStyle: CustomButtonStyles.outlineBlack,
    );
  }
}
