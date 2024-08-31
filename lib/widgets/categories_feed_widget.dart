import 'package:flutter/material.dart';
import 'package:al24news_app/widgets/category_card.dart';

class CategoriesList extends StatelessWidget {
  final Function(String) onCategorySelected;
  const CategoriesList({super.key, required this.onCategorySelected});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryCard(
                category: "general",
                categoryTitle: "All",
                colorCardBorder: const Color(0xFFDFDFDF),
                colorText: Colors.white,
                colorCard: const Color(0xFFE80000),
                onCategorySelected: onCategorySelected),
            CategoryCard(
                category: "science",
                categoryTitle: "Science",
                colorCardBorder: const Color(0xFFDFDFDF),
                colorText: const Color(0xFFC1C1C1),
                colorCard: const Color.fromARGB(0, 255, 255, 255),
                onCategorySelected: onCategorySelected),
            CategoryCard(
                category: "health",
                categoryTitle: "Health",
                colorCardBorder: const Color(0xFFDFDFDF),
                colorText: const Color(0xFFC1C1C1),
                colorCard: const Color.fromARGB(0, 255, 255, 255),
                onCategorySelected: onCategorySelected),
            CategoryCard(
                category: "sports",
                categoryTitle: "Sports",
                colorCardBorder: const Color(0xFFDFDFDF),
                colorText: const Color(0xFFC1C1C1),
                colorCard: const Color.fromARGB(0, 255, 255, 255),
                onCategorySelected: onCategorySelected),
          ],
        ),
      ],
    );
  }
}
