import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SearchingBar extends StatelessWidget {
  final String hintText;
  final Function(String) onSearch;

  const SearchingBar(
      {super.key, required this.hintText, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(60.0),
        border: Border.all(color: const Color(0xFFDFDFDF), width: 0.5),
        boxShadow: const [],
      ),
      child: TextField(
        decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: const Icon(Ionicons.caret_forward_circle, size: 49),
              color: const Color(0xFFE80000),
              onPressed: () {},
            ),
            hintText: hintText,
            hintStyle: const TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w200,
              fontSize: 15.0,
              color: Color(0xFF999999),
            ),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.only(
                left: 49.0, right: 160, top: 18.0, bottom: 18.0),
            prefixIcon: IconButton(
              icon: const Icon(Ionicons.search, size: 44, color: Color(0xFFD0D0D0)),
              color: const Color(0xFFD0D0D0),
              onPressed: () {},
            )),
        onChanged: onSearch,
      ),
    );
  }
}
