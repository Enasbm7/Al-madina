import 'package:flutter/material.dart';
import 'package:al_madina_application/presentation/welcome_one_screen/welcome_one_screen.dart';
import 'package:al_madina_application/presentation/logo_screen/logo_screen.dart';
import 'package:al_madina_application/presentation/welcome_screen/welcome_screen.dart';
import 'package:al_madina_application/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:al_madina_application/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:al_madina_application/presentation/otp_one_screen/otp_one_screen.dart';
import 'package:al_madina_application/presentation/otp_screen/otp_screen.dart';
import 'package:al_madina_application/presentation/otp_two_screen/otp_two_screen.dart';
import 'package:al_madina_application/presentation/homepage_screen/homepage_screen.dart';
import 'package:al_madina_application/presentation/menu_screen/menu_screen.dart';
import 'package:al_madina_application/presentation/profile_screen/profile_screen.dart';
import 'package:al_madina_application/presentation/location_one_screen/location_one_screen.dart';
import 'package:al_madina_application/presentation/submit_screen/submit_screen.dart';
import 'package:al_madina_application/presentation/confirmation_screen/confirmation_screen.dart';
import 'package:al_madina_application/presentation/notification_screen/notification_screen.dart';
import 'package:al_madina_application/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String welcomeOneScreen = '/welcome_one_screen';

  static const String logoScreen = '/logo_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String otpOneScreen = '/otp_one_screen';

  static const String otpScreen = '/otp_screen';

  static const String otpTwoScreen = '/otp_two_screen';

  static const String homepageScreen = '/homepage_screen';

  static const String menuScreen = '/menu_screen';

  static const String profileScreen = '/profile_screen';

  static const String locationOneScreen = '/location_one_screen';

  static const String submitScreen = '/submit_screen';

  static const String confirmationScreen = '/confirmation_screen';

  static const String notificationScreen = '/notification_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    welcomeOneScreen: (context) => WelcomeOneScreen(),
    logoScreen: (context) => LogoScreen(),
    welcomeScreen: (context) => WelcomeScreen(),
    signInScreen: (context) => SignInScreen(),
    signUpScreen: (context) => SignUpScreen(),
    otpOneScreen: (context) => OtpOneScreen(),
    otpScreen: (context) => OtpScreen(),
    otpTwoScreen: (context) => OtpTwoScreen(),
    homepageScreen: (context) => HomepageScreen(),
    menuScreen: (context) => MenuScreen(),
    profileScreen: (context) => ProfileScreen(),
    locationOneScreen: (context) => LocationOneScreen(),
    submitScreen: (context) => SubmitScreen(),
    confirmationScreen: (context) => ConfirmationScreen(),
    notificationScreen: (context) => NotificationScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
