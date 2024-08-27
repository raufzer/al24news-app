import 'package:al24news_app/services/news_service.dart';
import 'package:al24news_app/widgets/latest_news_card.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class LastetNewsFeed extends StatelessWidget {
  const LastetNewsFeed({super.key});
  NewsService newsService = NewsService(dio: Dio());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SilverList(
        delegate: SliverChildBuilderDelegate(
          childCount: articles.length,
          (context, index) {
            return SizedBox(
              height: 230.0,
              child: Row(children: [
                SizedBox(width: 35),
                LatestNewsCard(
                  image: articles[index].image,
                  title: articles[index].title,
                  articleWriter: articles[index].articleWriter,
                  articleDate: articles[index].articleDate,
                ),
              ]),
            );
          },
        ),
      ),
    );
  }
}