class ArticleModel {
  final String? image;
  final String? title;
  final List<dynamic>? articleWriter;
  final String? articleDate;

  ArticleModel({
    required this.image,
    required this.title,
    required this.articleWriter,
    required this.articleDate,
  });
  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
        image: json['image_url'],
        title: json['title'],
        articleWriter: json['creator'],
        articleDate: json['pubDate']);
  }
}
