import 'package:covid_19/routes/app_pages.dart';
import 'package:covid_19/routes/app_routes.dart';
import 'package:covid_19/theme.dart';
import 'package:covid_19/translations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      translations: Translation(),
      locale: Locale('tr'),
      fallbackLocale: Locale('tr'),
      theme: buildThemeData(context),
      initialRoute: AppRoutes.HOME,
      getPages: AppPages.list,
    );
  }
}
