import 'package:covid_19/controller/countries_cases_controller.dart';
import 'package:get/get.dart';

class CountriesBinging extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CountriesCasesController>(() => CountriesCasesController(), fenix: true);
  }
}
