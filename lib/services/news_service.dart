import 'package:al24news_app/models/article_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class NewsService {
  String apiKey = dotenv.env['API_KEY']!;
  final Dio dio;

  NewsService(this.dio);

  void getLastetNews() async {
    Response res = await dio.get(
        'https://newsdata.io/api/1/latest?country=dz,ma,tn,ly,ne&language=en&apikey=$apiKey');
    Map<String, dynamic> data = res.data;
    List<dynamic> articles = data['results'];
    List<ArticelModel> articlesList = [];
    for (var article in articles) {
      ArticelModel articelModel = ArticelModel(
          image: article['image_url'],
          title: article['title'],
          articleWriter: article['creator'],
          articleDate: article['pubDate']);
      articlesList.add(articelModel);
    }
  }
}
