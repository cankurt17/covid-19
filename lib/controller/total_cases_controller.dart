import 'package:covid_19/constants.dart';
import 'package:covid_19/models/total_cases_model.dart';
import 'package:covid_19/models/total_data.dart';
import 'package:covid_19/services/total_cases_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TotalCasesController extends GetxController {
  var _totalData = <TotalData>[].obs;
  var _loading = false.obs;
  var _language = false.obs;
  var _languageText = "TR".obs;

  TotalCasesService totalCasesService = TotalCasesService();

  get languageText => this._languageText.value;

  set languageText(var value) => this._languageText.value = value;

  get language => this._language.value;

  set language(var value) => this._language.value = value;

  get totalData => _totalData.value;

  set totalData(newValue) => _totalData.value = newValue;

  get loading => _loading.value;

  set loading(newValue) => _loading.value = newValue;

  @override
  void onInit() {
    super.onInit();
    fetchMoviesList();
  }

  Future fetchMoviesList() async {
    loading = true;
    TotalCasesModel data = await totalCasesService.getTotalCases();
    List<TotalData> dataList = [];
    dataList.add(TotalData("vaka".tr, casesToInt(data.result.totalCases),
        kCasesColor, data.result.totalCases));
    dataList.add(TotalData(
        "iyileşen".tr,
        casesToInt(data.result.totalRecovered),
        kRecovercolor,
        data.result.totalRecovered));
    dataList.add(TotalData("ölüm".tr, casesToInt(data.result.totalDeaths),
        kDeathColor, data.result.totalDeaths));
    totalData = dataList;
    loading = false;
  }

  int casesToInt(String cases) {
    return int.parse(cases.replaceAll(",", ""));
  }

  void languageSwitch(bool value) {
    if (value) {
      language = true;
      languageText = "ENG";
      Get.updateLocale(Locale('eng'));
    } else {
      language = false;
      languageText = "TR";
      Get.updateLocale(Locale('tr'));
    }
    fetchMoviesList();
  }
}
