import 'package:al24news_app/models/article_model.dart';
import 'package:al24news_app/widgets/news_card.dart';
import 'package:flutter/material.dart';

class NewsFeed extends StatelessWidget {
  const NewsFeed({super.key, required this.articles, required this.category});

  final List<ArticleModel> articles;
  final String category;

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
            article: articles[index],
            category: category,
          ),
        );
      },
    );
  }
}
