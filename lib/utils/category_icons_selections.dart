import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

Icon categoryIconsSelection(String category) {
  if (category == 'general') {
    return const Icon(Ionicons.globe, size: 11, color: Color(0xFF1C274D));
  } else if (category == 'science') {
    return const Icon(Ionicons.flask, size: 11, color: Color(0xFF1C274D));
  } else if (category == 'health') {
    return const Icon(Ionicons.medkit, size: 11, color: Color(0xFF1C274D));
  } else if (category == 'sport') {
    return const Icon(Ionicons.musical_notes,
        size: 11, color: Color(0xFF1C274D));
  }
  return const Icon(Ionicons.globe, size: 11, color: Color(0xFF1C274D));
}