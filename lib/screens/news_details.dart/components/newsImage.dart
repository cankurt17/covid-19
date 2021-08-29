import 'package:covid_19/controller/news_controller.dart';
import 'package:covid_19/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsImage extends StatelessWidget {
  const NewsImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: Get.find<NewsController>()
          .newsModel
          .result[Get.find<NewsController>().selectedIndex]
          .image,
      child: Container(
        width: double.infinity,
        height: SizeConfig.screenHeight / 3,
        color: Colors.red,
        child: Image.network(
          Get.find<NewsController>()
              .newsModel
              .result[Get.find<NewsController>().selectedIndex]
              .image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
