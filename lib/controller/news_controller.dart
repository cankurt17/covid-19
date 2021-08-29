import 'package:covid_19/models/news_model.dart';
import 'package:covid_19/services/auth/news_auth.dart';
import 'package:covid_19/services/news_services.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';

enum textType { titleText, descriptionText }

class NewsController extends GetxController implements NewsAuth {
  var _newsModel = NewsModel().obs;
  var _loading = false.obs;
  var _selectedIndex = 0.obs;

  get selectedIndex => this._selectedIndex.value;

  set selectedIndex(var value) => this._selectedIndex.value = value;

  get loading => this._loading.value;

  set loading(var value) => this._loading.value = value;

  get newsModel => this._newsModel.value;

  set newsModel(var value) => this._newsModel.value = value;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit(); 
    getAllNews();
  }

  @override
  Future<NewsModel> getAllNews() async {
    loading = true;
    newsModel = await NewsServices().getAllNews();
    loading = false;
  }

  String customText(textType text, int index, int size) {
    if (text == textType.titleText) {
      return newsModel.result[index].name.length < size
          ? newsModel.result[index].name
          : newsModel.result[index].name.substring(0, size) + " ...";
    } else {
      return newsModel.result[index].description.length < size
          ? newsModel.result[index].description
          : newsModel.result[index].description.substring(0, size) + " ...";
    }
  }



}
