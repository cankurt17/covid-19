import 'package:covid_19/screens/news_details.dart/components/body.dart';
import 'package:covid_19/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("haber_detayı".tr),
      ),
      body: NewsDetailsBody(),
    );
  }
}
