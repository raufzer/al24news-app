import 'package:al24news_app/widgets/category_card.dart';
import 'package:flutter/material.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: const [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width: 7),
            CategoryCard(
                category: "All",
                colorCardBorder: Color(0xFFDFDFDF),
                colorText: Colors.white,
                colorCard: Color(0xFFE80000)),
            SizedBox(width: 5),
            CategoryCard(
                category: "Science",
                colorCardBorder: Color(0xFFDFDFDF),
                colorText: Color(0xFFC1C1C1),
                colorCard: Color.fromARGB(0, 255, 255, 255)),
            SizedBox(width: 7),
            CategoryCard(
                category: "Health",
                colorCardBorder: Color(0xFFDFDFDF),
                colorText: Color(0xFFC1C1C1),
                colorCard: Color.fromARGB(0, 255, 255, 255)),
            SizedBox(width: 7),
            CategoryCard(
                category: "Culture",
                colorCardBorder: Color(0xFFDFDFDF),
                colorText: Color(0xFFC1C1C1),
                colorCard: Color.fromARGB(0, 255, 255, 255)),
            SizedBox(width: 7),
          ],
        ),
      ],
    );
  }
}
