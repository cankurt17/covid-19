import 'package:covid_19/components/loading_screen.dart';
import 'package:covid_19/controller/countries_cases_controller.dart';
import 'package:covid_19/screens/countries/components/body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountriesScreen extends StatelessWidget {
  CountriesCasesController controller = Get.find<CountriesCasesController>();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("vakalar".tr),
        ),
        body: controller.loading == true ? LoadingScreen() : Body(),
      ),
    );
  }
}
