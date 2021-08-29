 
import 'package:covid_19/controller/news_controller.dart';
import 'package:covid_19/screens/news/components/image_card.dart';
import 'package:covid_19/screens/news/components/news_text.dart'; 
import 'package:flutter/material.dart';
import 'package:get/get.dart'; 

class NewsList extends StatelessWidget { 

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: Get.find<NewsController>().newsModel.result.length,
      gridDelegate: buildSliverGridDelegateWithFixedCrossAxisCount(),
      itemBuilder: (context, index) => Container(
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
        ),
        child: Row(
          children: [
            ImageCard(
              index: index,
            ),
            NewsText(
              index: index,
            ),
          ],
        ),
      ),
    );
  }

  SliverGridDelegateWithFixedCrossAxisCount
      buildSliverGridDelegateWithFixedCrossAxisCount() {
    return SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisSpacing: 15,
        crossAxisSpacing: 10,
        childAspectRatio: 2);
  }
}
/*


*/
