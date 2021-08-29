import 'dart:convert';
import 'package:covid_19/constants.dart';
import 'package:covid_19/models/total_cases_model.dart';
import 'package:http/http.dart' as http;

class TotalCasesService {
  String _url = kTotalDataUrl;
  String _apiKey = kApiKey;
  String _contentType = kContentType;
  TotalCasesModel _totalCasesModel;

  Future<TotalCasesModel> getTotalCases() async {
    var response = await http.get(Uri.parse(_url),
        headers: {'authorization': _apiKey, 'content-type': _contentType});

    if (response.statusCode == 200) {
      var decodedJson = json.decode(response.body);
      return TotalCasesModel.fromJson(decodedJson);
    } else {
      print("Api  okunamadı " + response.statusCode.toString());
      return null;
    }
  }
}
