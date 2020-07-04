import 'package:agenda/app/modules/splash/splash_page.dart';
import 'package:agenda/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.INITIAL,
    getPages: AppPages.pages,
    home: SplashPage(),
    defaultTransition: Transition.fade,
  ));
}

