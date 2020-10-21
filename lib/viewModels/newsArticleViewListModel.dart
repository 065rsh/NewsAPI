import 'package:flutter/widgets.dart';
import 'package:news/models/NewsArticle.dart';
import 'package:news/services/WebService.dart';
import 'package:news/viewModels/newsArticleViewModel.dart';

class NewsArticleListViewModel extends ChangeNotifier {
  List<NewsArticleViewModel> articles = List<NewsArticleViewModel>();

  NewsArticleListViewModel(){
    _populateTopHeadLines();
  }

  void _populateTopHeadLines() async {
    List<NewsArticle> newsArticles = await WebServices().fetchTopHeadlines();
    this.articles = newsArticles
        .map((article) => NewsArticleViewModel(article: article))
        .toList();
    notifyListeners();
  }
}
