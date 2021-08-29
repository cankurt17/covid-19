import 'package:covid_19/components/loading_screen.dart';
import 'package:covid_19/controller/news_controller.dart';
import 'package:covid_19/screens/news/components/body.dart';
import 'package:covid_19/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("haberler".tr),
      ),
      body: Obx(() =>
          Get.find<NewsController>().loading ? LoadingScreen() : NewsBody()),
    );
  }
}
