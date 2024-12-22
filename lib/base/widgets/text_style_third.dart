import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
  final bool isColored;

  const TextStyleThird({
    super.key,
    required this.text,
    this.isColored = true,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.headLineStyle3.copyWith(
          color: isColored ? Colors.white : AppStyles.ticketTextColor),
    );
  }
}
