import 'package:covid_19/controller/news_controller.dart';
import 'package:covid_19/routes/app_routes.dart';
import 'package:covid_19/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoreButton extends StatelessWidget {
  final int index;

  const MoreButton({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {
            Get.find<NewsController>().selectedIndex = index;
            Get.toNamed(AppRoutes.NEWSDETAILS);
          },
          child: Text(
            "daha_fazla".tr,
            style: TextStyle(fontSize: getProportionateScreenWidth(10)),
          ),
        ),
      ],
    );
  }
}
