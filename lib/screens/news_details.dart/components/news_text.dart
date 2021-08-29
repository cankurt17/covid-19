import 'package:covid_19/constants.dart';
import 'package:covid_19/controller/news_controller.dart';
import 'package:covid_19/screens/news_details.dart/components/news_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 4),
      child: Column(
        children: [
          Text(
            Get.find<NewsController>()
                .newsModel
                .result[Get.find<NewsController>().selectedIndex]
                .name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          SizedBox(height: 10),
          NewsContent(),
          Text(
            Get.find<NewsController>()
                .newsModel
                .result[Get.find<NewsController>().selectedIndex]
                .description,
            style: TextStyle(fontSize: 16, color: kTextLightColor),
          )
        ],
      ),
    );
  }
}
