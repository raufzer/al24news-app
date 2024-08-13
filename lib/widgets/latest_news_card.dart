import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class LatestNewsCard extends StatelessWidget {
  const LatestNewsCard(
      {super.key, required this.newsTitle, this.writerName, this.newsDate});
  final String? newsTitle;
  final String? writerName;
  final String? newsDate;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 248.0,
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
                  const ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                    ),
                    child: Image(
                      image: AssetImage('assets/images/nyc.png'),
                    ),
                  ),
                  ListTile(
                    titleAlignment: ListTileTitleAlignment.top,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 1.0),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Expanded(
                        child: Text(
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          newsTitle ?? "",
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
                          width: 100.0,
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
