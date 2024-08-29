import 'package:al24news_app/models/article_model.dart';
import 'package:al24news_app/services/news_service.dart';
import 'package:al24news_app/widgets/news_feed_widget.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NewsFeedBuilder extends StatefulWidget {
  const NewsFeedBuilder({
    super.key,
  });

  @override
  State<NewsFeedBuilder> createState() => _NewsFeedBuilderState();
}

class _NewsFeedBuilderState extends State<NewsFeedBuilder> {
  List<ArticleModel> articles = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getNewsByCategory();
  }

  Future<void> getNewsByCategory() async {
    articles = await NewsService(dio: Dio()).getNewsByCategory('world');
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const CircularProgressIndicator()
        : NewsFeed(articles: articles);
  }
}
