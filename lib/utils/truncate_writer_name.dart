String truncateWriterName(String name) {
  final regex = RegExp(r'^[^@]+');
  final match = regex.firstMatch(name);
  final truncatedName = match?.group(0) ?? name;

  final words = truncatedName.split(' ');
  if (words.length > 2) {
    return '${words.sublist(0, 2).join(' ')}...';
  }
  return truncatedName;
}