import 'package:covid_19/controller/news_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsLinkButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        launchURL(Get.find<NewsController>()
            .newsModel
            .result[Get.find<NewsController>().selectedIndex]
            .url);
      },
      child: Text("Site"),
    );
  }

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }
}
