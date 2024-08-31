import 'package:al24news_app/models/article_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class NewsService {
  String apiKey = dotenv.env['API_KEY']!;
  final Dio dio;
  final baseUrl = dotenv.env['API_URL'];

  NewsService({required this.dio});

  Future<List<ArticleModel>> getLatestNews() async {
    try {
      Response res = await dio.get(
        baseUrl!,
        queryParameters: {
          'language': 'en',
          'apikey': apiKey,
        },
      );
      Map<String, dynamic> data = res.data;
      List<dynamic> articles = data['results'];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }

  Future<List<ArticleModel>> getNewsByCategory(
      {required String category}) async {
    try {
      Response res = await dio.get(
        baseUrl!,
        queryParameters: {
          'language': 'en',
          'category': category,
          'apikey': apiKey,
        },
      );
      Map<String, dynamic> data = res.data;
      List<dynamic> articles = data['results'];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
