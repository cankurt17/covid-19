import 'package:covid_19/controller/news_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageCard extends StatelessWidget {
  final int index;

  const ImageCard({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PhysicalModel(
        elevation: 20,
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: Hero(
            tag: Get.find<NewsController>().newsModel.result[index].image,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                  image: NetworkImage(
                      Get.find<NewsController>().newsModel.result[index].image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
