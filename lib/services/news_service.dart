import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class NewsService {
String apiKey = dotenv.env['API_KEY']!;

final Dio dio;

NewsService(this.dio);

void getTopHeadlinesNews() async {
  final response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=$apiKey');
}
}
