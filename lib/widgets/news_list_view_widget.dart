import 'package:al24news_app/widgets/news_card.dart';
import 'package:flutter/material.dart';

class NewsFeed extends StatelessWidget {
  const NewsFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: const [
        Newscard(
          newsTitle:
              "US Counterintelligence warns of spy risks to space technology",
          writerName: "John Doe",
          newsDate: "5 hours ago",
          newsCategory: "Science",
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
