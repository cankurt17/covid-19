import 'package:covid_19/controller/countries_cases_controller.dart';
import 'package:covid_19/controller/news_controller.dart';
import 'package:covid_19/controller/total_cases_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TotalCasesController>(() => TotalCasesController(),
        fenix: true);
    Get.lazyPut<CountriesCasesController>(() => CountriesCasesController(), fenix: true);
    Get.find<CountriesCasesController>();
    Get.lazyPut<NewsController>(() => NewsController(), fenix: true);
    Get.find<NewsController>();
  }
}
