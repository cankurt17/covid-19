import 'dart:convert';

import 'package:covid_19/constants.dart';
import 'package:covid_19/models/news_model.dart';
import 'package:covid_19/services/auth/news_auth.dart';
import 'package:http/http.dart' as http;

class NewsServices extends NewsAuth {
  String _url = kNewsUrl;
  String _apiKey = kApiKey;
  String _contentType = kContentType;

  Future<NewsModel> getAllNews() async {
    var response = await http.get(
      Uri.parse(_url),
      headers: {
        'authorization': _apiKey,
        'content-type': _contentType,
      },
    );
    if (response.statusCode == 200) {
      var decodedJson = json.decode(response.body);
      return NewsModel.fromJson(decodedJson);
    }
  }
}
