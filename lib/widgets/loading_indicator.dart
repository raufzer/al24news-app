import 'package:flutter/material.dart';

class LoadingIndocator extends StatelessWidget {
  const LoadingIndocator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}