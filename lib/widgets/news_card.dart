import 'package:al24news_app/models/article_model.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:intl/intl.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.article,
    required this.category,
  });

  final ArticleModel article;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          width: 34,
        ),
        SizedBox(
          width: 94,
          height: 104,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(20.0),
            ),
            child: Image.network(
              article.image ?? 'https://i.imgur.com/GtG3SgI.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 7,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 200,
              child: Text(
                article.title ?? "",
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 9.0,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'assets/icons/Writer.svg',
                  fit: BoxFit.cover,
                  width: 10.0,
                  height: 10.0,
                ),
                const SizedBox(
                  width: 2.0,
                ),
                Text(
                    _truncateWriterName(
                        article.articleWriter?.join() ?? 'No Writer'),
                    textAlign: TextAlign.left,
                    overflow:
                        TextOverflow.ellipsis, // Truncate if exceeds maxLines
                    maxLines: 2,
                    style: const TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 8.0,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFFAEAEAE),
                    )),
                const SizedBox(
                  width: 140,
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _category(category),
                const SizedBox(
                  width: 2.0,
                ),
                Text(category,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 8.0,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF027FC0),
                    )),
                const SizedBox(
                  width: 90.0,
                ),
                Text(_formatDate(article.articleDate!),
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: const TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 8.0,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(114, 232, 0, 0),
                    )),
              ],
            )
          ],
        )
      ],
    );
  }
}

String _formatDate(String dateString) {
  try {
    final DateTime parsedDate = DateTime.parse(dateString);
    final DateFormat formatter = DateFormat('MMM dd, yyyy');
    return formatter.format(parsedDate);
  } catch (e) {
    return 'No Date';
  }
}

Icon _category(String category) {
  if (category == 'world') {
    return const Icon(Ionicons.globe, size: 11, color: Color(0xFF1C274D));
  } else if (category == 'science') {
    return const Icon(Ionicons.flask, size: 11, color: Color(0xFF1C274D));
  } else if (category == 'health') {
    return const Icon(Ionicons.medkit, size: 11, color: Color(0xFF1C274D));
  } else if (category == 'tourism') {
    return const Icon(Ionicons.musical_notes,
        size: 11, color: Color(0xFF1C274D));
  }
  return const Icon(Ionicons.globe, size: 11, color: Color(0xFF1C274D));
}

String _truncateWriterName(String name) {
  final regex = RegExp(r'^[^@]+');
  final match = regex.firstMatch(name);
  final truncatedName = match?.group(0) ?? name;

  final words = truncatedName.split(' ');
  if (words.length > 2) {
    return '${words.sublist(0, 2).join(' ')}...';
  }
  return truncatedName;
}