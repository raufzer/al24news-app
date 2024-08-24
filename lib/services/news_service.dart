import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class NewsService {
String apiKey = dotenv.env['API_KEY']!;
final Dio dio;

NewsService(this.dio);

void getLastetNews() async {
  Response response = await dio.get('https://newsdata.io/api/1/latest?country=dz,ma,tn,ly,ne&language=en&apikey=$apiKey');


}
}
