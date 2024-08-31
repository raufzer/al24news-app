import 'package:intl/intl.dart';

String dateFormatting(String dateString) {
  try {
    final DateTime parsedDate = DateTime.parse(dateString);
    final DateFormat formatter = DateFormat('MMM dd, yyyy');
    return formatter.format(parsedDate);
  } catch (e) {
    return 'No Date';
  }
}