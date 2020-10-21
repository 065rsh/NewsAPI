import 'package:flutter/material.dart';
import 'package:news/screens/home_screen.dart';
import 'package:news/viewModels/newsArticleViewListModel.dart';
import 'package:provider/provider.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "News API",
      home: ChangeNotifierProvider(
        create: (context) => NewsArticleListViewModel(),
        child: Homescreen(),
      ),
    );
  }
}
