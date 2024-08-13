import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Newscard extends StatelessWidget {
  const Newscard(
      {super.key,
      required this.newsTitle,
      this.writerName,
      this.newsDate,
      this.newsCategory});
  final String? newsTitle;
  final String? writerName;
  final String? newsDate;
  final String? newsCategory;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          width: 34,
        ),
        const SizedBox(
          width: 94,
          height: 104,
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
            child: Image(
              image: AssetImage('assets/images/nyc.png'),
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
                newsTitle ?? "",
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
                const Icon(Ionicons.tennisball,
                    size: 11, color: Color(0xFF1C274D)),
                const SizedBox(
                  width: 2.0,
                ),
                Text(newsCategory ?? '',
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
                Text(newsDate ?? '',
                    textAlign: TextAlign.left,
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
