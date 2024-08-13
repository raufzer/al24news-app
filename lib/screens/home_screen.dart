import 'package:al24news_app/widgets/news_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:al24news_app/widgets/search_bar.dart';
import 'package:al24news_app/widgets/title.dart';
import 'package:al24news_app/widgets/latest_news_card.dart';
import 'package:al24news_app/widgets/category_card.dart';
import 'package:ionicons/ionicons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  final primaryColor = const Color(0xFFF8F8FA);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Center horizontally
          children: [
            SvgPicture.asset('assets/icons/AL24_News_Logo_dark.svg',
                fit: BoxFit.cover // Adjust height as needed
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
            SizedBox(
              height: 230.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  SizedBox(width: 35),
                  LatestNewsCard(
                    newsTitle:
                        "US Counterintelligence warns of spy risks to space technology",
                    writerName: "John Doe",
                    newsDate: "5 hours ago",
                  ),
                  SizedBox(width: 25),
                  LatestNewsCard(
                    newsTitle:
                        "Owners of Bambu 3D printers wake up to autonomous printing",
                    writerName: "John Doe",
                    newsDate: "10 hours ago",
                  ),
                  SizedBox(width: 25),
                  LatestNewsCard(
                    newsTitle:
                        "Crystals dancing to the tune of light might replace batteries Crystals dancing to the tune",
                    writerName: "John Doe",
                    newsDate: "12 hours ago",
                  ),
                  SizedBox(width: 25),
                  LatestNewsCard(
                    newsTitle:
                        "Owners of Bambu 3D printers wake up to autonomous printing",
                    writerName: "John Doe",
                    newsDate: "10 hours ago",
                  ),
                  SizedBox(width: 25),
                ],
              ),
            ),
            ListView(
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
            ),
            const SizedBox(
              height: 34,
            ),
            ListView(
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
                Newscard(
                  newsTitle:
                      "Owners of Bambu 3D printers wake up to autonomous printing",
                  writerName: "John Doe",
                  newsDate: "10 hours ago",
                  newsCategory: "Health",
                ),
                SizedBox(height: 15),
                Newscard(
                  newsTitle:
                      "Crystals dancing to the tune of light might replace batteries Crystals dancing to the tune",
                  writerName: "John Doe",
                  newsDate: "12 hours ago",
                  newsCategory: "Culture",
                ),
                SizedBox(height: 15),
                Newscard(
                  newsTitle:
                      "Owners of Bambu 3D printers wake up to autonomous printing",
                  writerName: "John Doe",
                  newsDate: "10 hours ago",
                  newsCategory: "Science",
                ),
                SizedBox(height: 15),
                Newscard(
                  newsTitle:
                      "US Counterintelligence warns of spy risks to space technology",
                  writerName: "John Doe",
                  newsDate: "5 hours ago",
                  newsCategory: "Science",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
