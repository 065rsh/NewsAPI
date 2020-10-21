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
    print(vm.articles[0].title);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: SvgPicture.asset("assets/svg/NewsAPILogo.svg"),
      ),
      body: Column(
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(height: 260),
            itemCount: 15,
            itemBuilder: (BuildContext context, int itemIndex) => Container(
              child: Card(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Column(
                    children: [
                      Container(
                          child:
                              Image.network(vm.articles[itemIndex].urlToImage)),
                      Text(vm.articles[itemIndex].title),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: vm.articles.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: Column(
                      children: [
                        Container(
                            child:
                                Image.network(vm.articles[index].urlToImage)),
                        Text(vm.articles[index].title),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
