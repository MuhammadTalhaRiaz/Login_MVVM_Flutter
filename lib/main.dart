import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/Screens/splash_screen.dart';
import 'package:untitled/routes/routes.dart';
import 'package:untitled/utils/Localization/localization.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Languages(),
      locale: Locale('en_US'),
      fallbackLocale: Locale('en_US'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: AppRoutes.appRoute(),
    );
  }
}

