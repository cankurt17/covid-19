import 'package:covid_19/components/custom_button.dart';
import 'package:covid_19/controller/countries_cases_controller.dart';
import 'package:covid_19/controller/news_controller.dart';
import 'package:covid_19/routes/app_routes.dart';
import 'package:covid_19/screens/home/components/backgraund.dart';
import 'package:covid_19/screens/home/components/circular_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Backgraund(),
          CircularBar(),
          CustomButton(
            icon: Icons.location_city,
            text: "ülkeler".tr,
            press: () => Get.toNamed(AppRoutes.COUNTRIES),
          ),
          SizedBox(height: 10),
          CustomButton(
            icon: Icons.new_releases_sharp,
            text: "haberler".tr,
            press: () { 
              Get.toNamed(AppRoutes.NEWS);
            },
          ),
          Spacer()
        ],
      ),
    );
  }
}
