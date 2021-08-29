import 'package:covid_19/models/news_model.dart';

abstract class NewsAuth {
  Future<NewsModel> getAllNews();
}
