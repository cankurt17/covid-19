import 'package:covid_19/constants.dart';
import 'package:covid_19/controller/countries_cases_controller.dart';
import 'package:covid_19/screens/countries/components/custom_data_card.dart';
import 'package:covid_19/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CasesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: kDefaultPadding / 2),
        width: double.infinity,
        child: Obx(
          () => Column(
            children: [
              SizedBox(height: 5),
              titleText(),
              cityText(),
              SizedBox(height: getProportionateScreenHeight(kDefaultPadding)),
              dataRow(),
              SizedBox(
                  height: getProportionateScreenHeight(kDefaultPadding * 2)),
              activeCasesCard(),
            ],
          ),
        ));
  }

  Row activeCasesCard() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SvgPicture.asset(
          "assets/icons/activeCases.svg",
          width: getProportionateScreenWidth(100),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "toplam_aktif_vaka".tr,
              style: TextStyle(
                  color: kTextLightColor,
                  fontWeight: FontWeight.bold,
                  fontSize: getProportionateScreenWidth(22)),
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            Obx(
              () => Text(
                Get.find<CountriesCasesController>()
                            .getCasesData()
                            .activeCases ==
                        ""
                    ? "0"
                    : Get.find<CountriesCasesController>()
                        .getCasesData()
                        .activeCases,
                style: TextStyle(
                    color: kTitleTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenWidth(18)),
              ),
            ),
          ],
        )
      ],
    );
  }

  Text cityText() {
    return Text(
      Get.find<CountriesCasesController>()
          .countries[Get.find<CountriesCasesController>().selectedDropdownItem],
      style: TextStyle(
          color: kTextLightColor, fontSize: getProportionateScreenWidth(12)),
    );
  }

  Text titleText() {
    return Text(
      "istatislikler".tr,
      style: TextStyle(
        fontSize: getProportionateScreenWidth(18),
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Row dataRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        DataCard(
          svgUrl: "assets/icons/totalRecovered.svg",
          color: kRecovercolor,
          data: Get.find<CountriesCasesController>()
              .getCasesData()
              .totalRecovered,
          text: "iyileşen".tr,
        ),
        DataCard(
          svgUrl: "assets/icons/totalCases.svg",
          color: kCasesColor,
          data: Get.find<CountriesCasesController>().getCasesData().totalCases,
          newData: Get.find<CountriesCasesController>().getCasesData().newCases,
          text: "vaka".tr,
        ),
        DataCard(
          svgUrl: "assets/icons/totalDeath.svg",
          color: kDeathColor,
          data: Get.find<CountriesCasesController>().getCasesData().totalDeaths,
          newData:
              Get.find<CountriesCasesController>().getCasesData().newDeaths,
          text: "ölüm".tr,
        )
      ],
    );
  }
}
