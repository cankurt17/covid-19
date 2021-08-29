import 'package:covid_19/models/countries_cases.dart';
import 'package:covid_19/services/auth/countries_cases_auth.dart';
import 'package:covid_19/services/countries_cases_service.dart';
import 'package:get/get.dart';

class CountriesCasesController extends GetxController
    implements CountriesCasesAuth {
  var _selectedDropdownItem = 0.obs;
  var _countriesDataList = <CasesModel>[].obs;
  var _countries = <String>[].obs;
  var _countriesSearch = <String>[].obs;
  var _loading = false.obs;
  CountriesCasesService countriesCasesService = CountriesCasesService();

  get countriesSearch => this._countriesSearch.value;

  set countriesSearch(List<String> value) =>
      this._countriesSearch.value = value;

  get countriesDataList => this._countriesDataList;

  set countriesDataList(List<CasesModel> value) =>
      this._countriesDataList.value = value;

  get selectedDropdownItem => this._selectedDropdownItem.value;

  set selectedDropdownItem(var value) =>
      this._selectedDropdownItem.value = value;

  List<String> get countries => this._countries.value;

  set countries(List<String> value) => this._countries.value = value;

  get loading => this._loading.value;

  set loading(var loading) => this._loading.value = loading;

  @override
  void onInit() {
    super.onInit();
    getAllCountries();
  }

  @override
  Future<List<String>> getAllCountries() async {
    loading = true;
    countries = await CountriesCasesService().getAllCountries();
    countriesSearch = countries;
    await getCountriesCases();
    loading = false;
  }

  @override
  Future<List<CasesModel>> getCountriesCases() async {
    loading = true;
    List<CasesModel> data = await countriesCasesService.getCountriesCases();
    countriesDataList = data;
    loading = false;
  }

  CasesModel getCasesData() {
    return countriesDataList[selectedDropdownItem];
  }

  void searchCountries(String value) {
    if (value == "") {
      countriesSearch = countries;
    } else {
      countriesSearch = countries
          .where(
              (element) => element.toLowerCase().contains(value.toLowerCase()))
          .toList();
    }
  }

  void countrySelection(int index) {
    selectedDropdownItem = countries.indexOf(countriesSearch[index]);
  }
}
