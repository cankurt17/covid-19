import 'package:covid_19/constants.dart';
import 'package:covid_19/controller/news_controller.dart';
import 'package:covid_19/screens/news/components/more_button.dart';
import 'package:covid_19/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsText extends StatelessWidget {
  final int index;

  const NewsText({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(
            left: kDefaultPadding / 2,
            top: kDefaultPadding / 2,
            right: kDefaultPadding / 2),
        child: Column(
          children: [
            Text(
              Get.find<NewsController>()
                  .customText(textType.descriptionText, index, 35),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: getProportionateScreenWidth(14),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              Get.find<NewsController>()
                  .customText(textType.descriptionText, index, 120),
              style: TextStyle(
                  color: kTextLightColor,
                  fontSize: getProportionateScreenWidth(12)),
            ),
            Expanded(
              child: MoreButton(
                index: index,
              ),
            )
          ],
        ),
      ),
    );
  }
}
