import 'package:al24news_app/widgets/news_card.dart';
import 'package:flutter/material.dart';

class NewsFeed extends StatelessWidget {
  const NewsFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(bottom: 15),
          child: const NewsCard(
            newsTitle: "The Best Places to Travel in 2022",
            writerName: "John Doe",
            newsDate: "Dec 12, 2021",
          ),
        );
      },
    );
  }
}
