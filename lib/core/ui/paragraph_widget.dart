import 'package:flutter/material.dart';

class ParagraphWidget extends StatelessWidget {
  const ParagraphWidget({
    super.key,
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context) {
    return Text('$content \n');
  }
}
