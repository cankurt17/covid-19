import 'dart:convert';
import 'package:covid_19/models/countries_cases.dart';
import 'package:covid_19/constants.dart';
import 'package:covid_19/services/auth/countries_cases_auth.dart';
import 'package:http/http.dart' as http;

class CountriesCasesService extends CountriesCasesAuth {
  String _url = kCountriesCasesUrl;
  String _apiKey = kApiKey;
  String _contentType = kContentType;

  List<String> countries = [];

  @override
  Future<List<String>> getAllCountries() async {
    var response = await http.get(
      Uri.parse(_url),
      headers: {'authorization': _apiKey, 'content-type': _contentType},
    );

    if (response.statusCode == 200) {
      var decodedJson = json.decode(response.body);
      (decodedJson["result"] as List).map((e) {
        countries.add(e["country"]);
      }).toList();

      return countries;
    } else {
      print("Api  okunamadı " + response.statusCode.toString());
      return null;
    }
  }

  @override
  Future<List<CasesModel>> getCountriesCases() async {
    var response = await http.get(
      Uri.parse(_url),
      headers: {
        'authorization': _apiKey,
        'content-type': _contentType,
      },
    );
    if (response.statusCode == 200) {
      var decodedJson = json.decode(response.body);

      return List<CasesModel>.from(
          decodedJson["result"].map((x) => CasesModel.fromJson(x)));
    } else {
      print("Api  okunamadı " + response.statusCode.toString());
      return null;
    }
  }
}
