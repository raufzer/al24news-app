import 'package:al24news_app/services/news_service.dart';
import 'package:al24news_app/widgets/latest_news_feed_widge.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class LastetNewsFeedBuilder extends StatelessWidget {
  const LastetNewsFeedBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: NewsService(dio: Dio()).getLatestNews(),
        builder: (context, snapshot) {
          return LastetNewsFeed(
            articles: snapshot.data ?? [],
          );
        });
  }
}
