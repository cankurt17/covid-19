import 'package:covid_19/constants.dart';
import 'package:covid_19/screens/news_details.dart/components/newsImage.dart';
import 'package:covid_19/screens/news_details.dart/components/news_text.dart';
import 'package:flutter/material.dart';

class NewsDetailsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          child: Column(
        children: [NewsImage(), SizedBox(height: 10), NewsText()],
      )),
    );
  }
}
