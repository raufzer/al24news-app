import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.categoryTitle,
    required this.category,
    required this.colorCard,
    required this.colorCardBorder,
    required this.colorText,
    required this.onCategorySelected,
    this.isSelected = false,
  });
  final bool isSelected;
  final String categoryTitle;
  final String category;
  final Color colorCardBorder;
  final Color colorCard;
  final Color colorText;
  final Function(String) onCategorySelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onCategorySelected(category);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: isSelected ? Colors.red : colorCard,
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(
            color: colorCardBorder,
            width: 1.0,
          ),
        ),
        child: Text(
          categoryTitle,
          style: TextStyle(
            color: colorText,
            fontSize: 12.0,
            fontWeight: FontWeight.w900,
            fontFamily: 'Roboto',
          ),
        ),
      ),
    );
  }
}
