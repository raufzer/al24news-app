import 'package:al24news_app/models/article_model.dart';
import 'package:al24news_app/widgets/latest_news_card.dart';
import 'package:flutter/material.dart';

class LastetNewsFeed extends StatelessWidget {
  const LastetNewsFeed({super.key, required this.articles});

  final List<ArticleModel> articles ;

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
