import 'package:al24news_app/models/article_model.dart';
import 'package:al24news_app/services/news_service.dart';
import 'package:al24news_app/widgets/error_message_widget.dart';
import 'package:al24news_app/widgets/loading_indicator.dart';
import 'package:al24news_app/widgets/news_feed_widget.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NewsFeedBuilder extends StatefulWidget {
  final String category;

  const NewsFeedBuilder({
    super.key,
    required this.category,
  });

  @override
  State<NewsFeedBuilder> createState() => _NewsFeedBuilderState();
}

class _NewsFeedBuilderState extends State<NewsFeedBuilder> {
  // ignore: prefer_typing_uninitialized_variables
  var categoryNews;
  @override
  void initState() {
    super.initState();
    categoryNews =
        NewsService(dio: Dio()).getNewsByCategory(category: widget.category);
  }

  @override
  void didUpdateWidget(NewsFeedBuilder oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.category != widget.category) {
      setState(() {
        categoryNews = NewsService(dio: Dio())
            .getNewsByCategory(category: widget.category);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: categoryNews,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsFeed(
              articles: snapshot.data!,
              category: widget.category,
            );
          } else if (snapshot.hasError) {
            return const ErrorMessage();
          } else {
            return const LoadingIndicator();
          }
        });
  }
}
