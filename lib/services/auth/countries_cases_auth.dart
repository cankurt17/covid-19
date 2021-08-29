import 'package:covid_19/models/countries_cases.dart';

abstract class CountriesCasesAuth {
  Future<List<String>> getAllCountries();
  Future<List<CasesModel>> getCountriesCases();
}
