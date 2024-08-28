import 'package:al24news_app/models/article_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class NewsService {
  String apiKey = dotenv.env['API_KEY']!;
  final Dio dio;

  NewsService({required this.dio});

  Future<List<ArticleModel>> getLastetNews() async {
    Response res = await dio.get(
        'https://newsdata.io/api/1/latest?&language=fr,en&apikey=$apiKey');
    Map<String, dynamic> data = res.data;
    List<dynamic> articles = data['results'];
    List<ArticleModel> articlesList = [];
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
          image: article['image_url'],
          title: article['title'],
          articleWriter: article['creator'],
          articleDate: article['pubDate']);
      articlesList.add(articleModel);
    }
    return articlesList;
  }
}
