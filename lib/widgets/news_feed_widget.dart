import 'package:al24news_app/models/article_model.dart';
import 'package:al24news_app/services/news_service.dart';
import 'package:al24news_app/widgets/news_card.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NewsFeed extends StatefulWidget {
  const NewsFeed({super.key});

  @override
  State<NewsFeed> createState() => _NewsFeedState();
}


class _NewsFeedState extends State<NewsFeed> {
    List<ArticleModel> articles = [];
  @override
  void initState() {

    super.initState();
    getNewsByCategory();
  }

    Future<void> getNewsByCategory() async {
    articles = await NewsService(dio: Dio()).getNewsByCategory('world');
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: articles.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(bottom: 15),
          child: NewsCard(
            article: articles[index] ,
            category: 'world',
          ),
        );
      },
    );
  }
}

