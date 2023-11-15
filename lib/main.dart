import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:al_madina_application/theme/theme_helper.dart';
import 'package:al_madina_application/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'al_madina_application',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.welcomeOneScreen,
      routes: AppRoutes.routes,
    );
  }
}
