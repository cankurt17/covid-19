import 'package:covid_19/controller/countries_cases_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        itemCount: Get.find<CountriesCasesController>().countriesSearch.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Get.find<CountriesCasesController>().countrySelection(index);
            Get.back();
          },
          child: Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Text(
                Get.find<CountriesCasesController>().countriesSearch[index],
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
