import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ionicons/ionicons.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen(
      {super.key,
      required this.newsTitle,
      required this.writerName,
      required this.newsDate,
      required this.news});
  final primaryColor = const Color(0xFFF8F8FA);
  final String? newsTitle;
  final String? writerName;
  final String? newsDate;
  final String? news;
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
          icon: const Icon(Ionicons.chevron_back_outline,
              size: 31, color: Color(0xFFAEAEAE)),
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 294,
                  height: 173,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                    child: Image(
                      image: AssetImage('assets/images/nyc.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 50),
                    SizedBox(
                      width: 293,
                      child: Text(
                        newsTitle ?? '',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 50,
                    ),
                    const Icon(Ionicons.pencil_outline,
                        size: 11, color: Color(0xFFAEAEAE)),
                    const SizedBox(
                      width: 2.0,
                    ),
                    Text(writerName ?? '',
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 8.0,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFFAEAEAE),
                        )),
                    const SizedBox(
                      width: 120,
                    ),
                    Text(newsDate ?? '',
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 8.0,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(114, 232, 0, 0),
                        )),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 31,
            ),
            Column(
            
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 294,
                  child: Text(
                    news ?? "",
                    maxLines: 250,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
