class NewsArticle {
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String content;

  NewsArticle(
      {this.title, this.description, this.url, this.urlToImage, this.content});

  factory NewsArticle.fromJSON(Map<String, dynamic> json) {
    return NewsArticle(
      title: json["title"],
      description: json["description"],
      url: json["url"],
      urlToImage: json["urlToImage"],
      content: json["content"],
    );
  }
}
