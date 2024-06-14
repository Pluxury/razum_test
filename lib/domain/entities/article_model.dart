class ArticleModel {
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final DateTime publishedAt;
  final String content;

  String get formattedPublishDate =>
      '${publishedAt.day}.${publishedAt.month}.${publishedAt.year} ${publishedAt.hour}:${publishedAt.minute}';

  ArticleModel({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });
}
