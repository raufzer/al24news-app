import 'package:al24news_app/widgets/categories_feed_widget.dart';
import 'package:al24news_app/widgets/latest_news_feed_widget_builder.dart';
import 'package:al24news_app/widgets/news_feed_widget_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:al24news_app/widgets/search_bar.dart';
import 'package:al24news_app/widgets/title_widget.dart';
import 'package:ionicons/ionicons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = "All";
  final primaryColor = const Color(0xFFF8F8FA);

  void onCategorySelected(String category) {
    setState(() {
      selectedCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            SvgPicture.asset('assets/icons/AL24_News_Logo_dark.svg',
                fit: BoxFit.cover 
                ),
          ],
        ),
        leading: IconButton(
          icon: const Icon(Ionicons.moon, size: 31, color: Color(0xFF434343)),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Ionicons.notifications,
                size: 31, color: Color(0xFF434343)),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchingBar(
              hintText: "Search News..",
              onSearch: (value) {},
            ),
            const TitleMain(text: "Latest News"),
            const LastetNewsFeedBuilder(),
            CategoriesList(
              onCategorySelected: onCategorySelected,
            ),
            const SizedBox(
              height: 34,
            ),
            NewsFeedBuilder(
              category: selectedCategory,
            ),
          ],
        ),
      ),
    );
  }
}
