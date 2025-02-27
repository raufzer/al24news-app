import 'package:al24news_app/models/article_model.dart';
import 'package:al24news_app/utils/date_formatting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LatestNewsCard extends StatelessWidget {
  const LatestNewsCard({
    super.key,
    required this.article,
  });
  final ArticleModel article;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 247,
      height: 171,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              shadowColor: Colors.transparent,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: const BorderSide(
                  color: Color(0xFFE0E0E0),
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                    ),
                    child: SizedBox(
                      width: 245,
                      height: 116,
                      child: Image.network(
                          article.image ?? 'https://i.imgur.com/GtG3SgI.png',
                          fit: BoxFit.cover),
                    ),
                  ),
                  ListTile(
                    titleAlignment: ListTileTitleAlignment.top,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 4.0,
                      vertical: 1.0,
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Expanded(
                        child: Text(
                          article.title ?? "",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 9.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/Writer.svg',
                          fit: BoxFit.cover,
                          width: 10.0,
                          height: 10.0,
                        ),
                        const SizedBox(width: 2.0),
                        SizedBox(
                          width: 70,
                          height: 11,
                          child: Text(
                            article.articleWriter?.join() ?? 'No Writer',
                            textAlign: TextAlign.left,
                            overflow: TextOverflow
                                .ellipsis, // Truncate if exceeds maxLines
                            maxLines: 2,
                            style: const TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 8.0,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFFAEAEAE),
                            ),
                          ),
                        ),
                        const SizedBox(width: 80.0),
                        Text(
                          dateFormatting(article.articleDate!),
                          textAlign: TextAlign.left,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: const TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 8.0,
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(114, 232, 0, 0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


