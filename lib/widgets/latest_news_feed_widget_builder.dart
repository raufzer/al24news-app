import 'package:al24news_app/models/article_model.dart';
import 'package:al24news_app/services/news_service.dart';
import 'package:al24news_app/widgets/error_message_widget.dart';
import 'package:al24news_app/widgets/latest_news_feed_widge.dart';
import 'package:al24news_app/widgets/loading_indicator.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';


class LastetNewsFeedBuilder extends StatefulWidget {
  const LastetNewsFeedBuilder({
    super.key,
  });

  @override
  State<LastetNewsFeedBuilder> createState() => _LastetNewsFeedBuilderState();
}

class _LastetNewsFeedBuilderState extends State<LastetNewsFeedBuilder> {
  // ignore: prefer_typing_uninitialized_variables
  var latestNews;
  @override
  void initState() {
    super.initState();
    latestNews = NewsService(dio: Dio()).getLatestNews();  
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: latestNews,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return LastetNewsFeed(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const ErrorMessage();
          } else {
            return const LoadingIndicator();
          }
        });
  }
}








