import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String firstLine;
  final String secondLine;
  final CrossAxisAlignment crossAxisAlignment;
  final bool isColored;

  const AppColumnTextLayout({
    super.key,
    required this.firstLine,
    required this.secondLine,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.isColored = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        TextStyleThird(text: firstLine, isColored: isColored),
        const SizedBox(height: 3),
        TextStyleFourth(text: secondLine, isColored: isColored),
      ],
    );
  }
}
