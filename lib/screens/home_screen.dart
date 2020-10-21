import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news/viewModels/newsArticleViewListModel.dart';
import 'package:news/viewModels/newsArticleViewModel.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<NewsArticleListViewModel>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
      title: SvgPicture.asset("assets/svg/NewsAPILogo.svg"),
    ),
    body: Card(

    )


    );
  }
}
