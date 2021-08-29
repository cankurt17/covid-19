import 'package:covid_19/bindings/countries_binding.dart';
import 'package:covid_19/bindings/home_binding.dart';
import 'package:covid_19/bindings/news_binding.dart';
import 'package:covid_19/bindings/news_details_binding.dart';
import 'package:covid_19/routes/app_routes.dart';
import 'package:covid_19/screens/countries/countries_screen.dart';
import 'package:covid_19/screens/home/home_screen.dart';
import 'package:covid_19/screens/news/news_screen.dart';
import 'package:covid_19/screens/news_details.dart/news_details_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.COUNTRIES,
      page: () => CountriesScreen(),
      binding: CountriesBinging(),
    ),
    GetPage(
      name: AppRoutes.NEWS,
      page: () => NewsScreen(),
      binding: NewsBinding(),
    ),
    GetPage(
      name: AppRoutes.NEWSDETAILS,
      page: () => NewsDetailsScreen(),
      binding: NewsDetailsBinding(),
    ),
  ];
}
