import 'package:covid_19/controller/total_cases_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageSwitch extends StatelessWidget {
  const LanguageSwitch({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 1,
      right: 1,
      child: Row(
        children: [
          Text(Get.find<TotalCasesController>().languageText),
          Switch(
            value:  Get.find<TotalCasesController>().language,
            onChanged: (value) {
              Get.find<TotalCasesController>().languageSwitch(value);
            },
          ),
        ],
      ),
    );
  }
}
