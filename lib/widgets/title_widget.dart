import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TitleMain extends StatelessWidget {
  const TitleMain({super.key, required this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 22.0, top: 22.0),
        ),
        Text(
          text ?? "",
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF027FC0),
          ),
        ),
      ],
    );
  }
}
