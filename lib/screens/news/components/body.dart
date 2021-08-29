import 'package:covid_19/constants.dart';
import 'package:covid_19/screens/news/components/news_list.dart'; 
import 'package:flutter/material.dart';

class NewsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding / 4,
      ),
      child: NewsList(),
    );
  }
}
