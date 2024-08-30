import 'package:al24news_app/models/article_model.dart';
import 'package:al24news_app/services/news_service.dart';
import 'package:al24news_app/widgets/latest_news_feed_widge.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

// class LastetNewsFeedBuilder extends StatelessWidget {
//   const LastetNewsFeedBuilder({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         future: NewsService(dio: Dio()).getLatestNews(),
//         builder: (context, snapshot) {
//           return LastetNewsFeed(
//             articles: snapshot.data ?? [],
//           );
//         });
//   }
// }

class LastetNewsFeedBuilder extends StatefulWidget {
  const LastetNewsFeedBuilder({
    super.key,
  });

  @override
  State<LastetNewsFeedBuilder> createState() => _LastetNewsFeedBuilderState();
}

class _LastetNewsFeedBuilderState extends State<LastetNewsFeedBuilder> {
  List<ArticleModel> articles = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getNewsByCategory();
  }

  Future<void> getNewsByCategory() async {
    articles = await NewsService(dio: Dio()).getLatestNews();
    isLoading = false;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const CircularProgressIndicator()
        : LastetNewsFeed(articles: articles);
  }
}