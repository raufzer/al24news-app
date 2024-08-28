import 'package:al24news_app/models/article_model.dart';
import 'package:al24news_app/services/news_service.dart';
import 'package:al24news_app/widgets/latest_news_card.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class LastetNewsFeed extends StatefulWidget {
  const LastetNewsFeed({super.key});

  @override
  State<LastetNewsFeed> createState() => _LastetNewsFeedState();
}

class _LastetNewsFeedState extends State<LastetNewsFeed> {
  List<ArticleModel> articles = [];
  @override
  void initState(){
    super.initState();
    getLastetNews();
  }

  Future<void> getLastetNews() async {
    articles = await NewsService(dio: Dio()).getLastetNews();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(left: 35),
            child: LatestNewsCard(article: articles[index]),
          );
        },
      ),
    );
  }
}
