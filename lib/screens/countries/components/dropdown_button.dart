import 'package:covid_19/constants.dart';
import 'package:covid_19/controller/countries_cases_controller.dart';
import 'package:covid_19/screens/countries/components/bottom_sheet_list.dart';
import 'package:covid_19/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountriesDropdownButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CountriesCasesController controller = Get.find<CountriesCasesController>();
    return InkWell(
      onTap: bottomSheet,
      child: Container(
        width: double.infinity,
        height: getProportionateScreenHeight(50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            border: Border.all(color: kPrimaryColor)),
        child: Row(
          children: [
            SizedBox(width: getProportionateScreenWidth(kDefaultPadding / 2)),
            leftIcon(),
            SizedBox(width: getProportionateScreenWidth(kDefaultPadding / 2)),
            Obx(() =>
                Text(controller.countries[controller.selectedDropdownItem])),
            Spacer(),
            rigthIcon(),
            SizedBox(width: getProportionateScreenWidth(kDefaultPadding / 2)),
          ],
        ),
      ),
    );
  }

  Icon rigthIcon() {
    return Icon(
      Icons.arrow_drop_down,
      color: kPrimaryColor,
    );
  }

  Icon leftIcon() {
    return Icon(
      Icons.location_on_outlined,
      color: kPrimaryColor,
    );
  }

  bottomSheet() {
    Get.find<CountriesCasesController>().searchCountries("");
    Get.bottomSheet(
      Container(
          width: double.infinity,
          height: SizeConfig.screenHeight / 2,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.only(top: kDefaultPadding / 2),
            child: Column(
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
                  child: Form(
                    child: TextFormField(
                      onChanged: (value) {
                        Get.find<CountriesCasesController>()
                            .searchCountries(value);
                      },
                      decoration: InputDecoration(
                          labelText: "ara".tr,
                          hintText: "Turkey",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 45,
                            vertical: 20,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            gapPadding: 10,
                          ),
                          suffixIcon: Icon(Icons.search)),
                    ),
                  ),
                ),
                Expanded(
                  child: BottomSheetList(),
                )
              ],
            ),
          )),
    );
  }
}
