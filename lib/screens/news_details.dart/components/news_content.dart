import 'package:covid_19/constants.dart';
import 'package:covid_19/screens/news_details.dart/components/news_link_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "haber_kaynağı".tr+" : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                "NTV Sağlık ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: kTextLightColor),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "haber_sitesi".tr+" : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              NewsLinkButton()
            ],
          ),
        ],
      ),
    );
  }
}
