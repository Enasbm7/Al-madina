import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack90002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90002,
        fontSize: 19.fSize,
      );
  static get bodyLargeGray80001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray80001,
        fontSize: 16.fSize,
      );
  static get bodyLargeGray8000116 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray80001,
        fontSize: 16.fSize,
      );
  static get bodyLargeGray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900,
        fontSize: 16.fSize,
      );
  static get bodyLargeIndigoA70003 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.indigoA70003,
      );
  static get bodyLargeInterBlack90002 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.black90002,
      );
  static get bodyLargePoppinsBlack90002 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.black90002,
        fontSize: 16.fSize,
      );
  static get bodyLargePoppinsGray500 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.gray500,
        fontSize: 16.fSize,
      );
  static get bodyLargePoppinsGray800 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.gray800,
        fontSize: 16.fSize,
      );
  static get bodyLargeSFProTextWhiteA70001 =>
      theme.textTheme.bodyLarge!.sFProText.copyWith(
        color: appTheme.whiteA70001,
      );
  static get bodyMediumGray40001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray40001,
      );
  static get bodyMediumGray40001_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray40001,
      );
  static get bodyMediumGray80001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray80001,
      );
  static get bodyMediumMontserratGray40001 =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        color: appTheme.gray40001,
      );
  // Headline text style
  static get headlineMediumBlack90002 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.black90002,
      );
  static get headlineMediumWhiteA70001 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.whiteA70001,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallPoppinsGray800 =>
      theme.textTheme.headlineSmall!.poppins.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w500,
      );
  // Title text style
  static get titleLargeBlack90002 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90002,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargeWhiteA70001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 22.fSize,
      );
  static get titleLargeWhiteA70001_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA70001,
      );
  static get titleMediumBlack90002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90002,
      );
  static get titleMediumGray40001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray40001,
      );
  static get titleMediumMontserratBlack90002 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.black90002,
      );
  static get titleMediumMontserratBlack90002Bold =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.black90002,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumMontserratBlack90002_1 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.black90002,
      );
  static get titleMediumMontserratGray80001 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumMontserratGray80001Bold =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumMontserratIndigoA70003 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.indigoA70003,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumWhiteA70001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA70001,
      );
  static get titleSmallGray50001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50001,
      );
  static get titleSmallInterBlack90002 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.black90002,
      );
  static get titleSmallInterGray40001 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray40001,
      );
  static get titleSmallMontserratBlack90002 =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: appTheme.black90002,
      );
  static get titleSmallSFProText =>
      theme.textTheme.titleSmall!.sFProText.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }
}
