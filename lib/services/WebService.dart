import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news/models/NewsArticle.dart';

class WebServices {
  Future<List<NewsArticle>> fetchTopHeadlines() async {
    String topHeadLineUrl =
        "https://newsapi.org/v2/top-headlines?country=gb&apiKey=01261eedb40c4e96a3f0d66ef1feca7e";

    final headlineResults = await http.get(topHeadLineUrl);

    if (headlineResults.statusCode == 200) {
      final topHeadLines = jsonDecode(headlineResults.body);
      Iterable list = topHeadLines["articles"];
      return list.map((article) => NewsArticle.fromJSON(article)).toList();
    } else {
      throw Exception("Failed To Get Top News Articles");
    }
  }
}
