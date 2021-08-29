import 'package:covid_19/controller/total_cases_controller.dart';
import 'package:covid_19/models/total_data.dart';
import 'package:covid_19/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CircularBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TotalCasesController totalCasesController =
        Get.find<TotalCasesController>();
    return Container(
      width: double.infinity,
      height: getProportionateScreenHeight(300),
      child: Obx(
        () => totalCasesController.loading == false
            ? buildSfCircularChart(totalCasesController)
            : Center(child: CircularProgressIndicator()),
      ),
    );
  }

  SfCircularChart buildSfCircularChart(
      TotalCasesController totalCasesController) {
    return SfCircularChart(
      title: ChartTitle(text: 'toplam_vakalar'.tr),
      legend:
          Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
      series: <CircularSeries>[
        PieSeries<TotalData, String>(
          explode: true,
          //explodeIndex: 0,
          dataSource: totalCasesController.totalData,
          xValueMapper: (TotalData data, _) => data.contient.tr,
          yValueMapper: (TotalData data, _) => data.gdp,
          dataLabelMapper: (TotalData data, _) => data.gdpText.tr,
          pointColorMapper: (TotalData data, _) => data.color,
          dataLabelSettings: DataLabelSettings(
            isVisible: true,
          ),
        )
      ],
    );
  }
}
