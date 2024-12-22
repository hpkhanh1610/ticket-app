import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class BigDot extends StatelessWidget {
  final bool isColored;

  const BigDot({super.key, this.isColored = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: Colors.amber,
        border: Border.all(
            width: 2.5,
            color: isColored ? Colors.white : AppStyles.ticketTextColor),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
