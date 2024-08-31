import 'package:al24news_app/widgets/categories_feed_widget.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {super.key,
      required this.category,
      required this.colorCard,
      required this.colorCardBorder,
      required this.colorText});
  final String category;
  final Color colorCardBorder;
  final Color colorCard;
  final Color colorText;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed :  () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context){
              return const CategoriesFeed();
            }));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: colorCard,
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(
            color: colorCardBorder,
            width: 1.0,
          ),
        ),
        child: Text(
          category,
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
