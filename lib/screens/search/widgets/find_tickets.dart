import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class FindTickets extends StatelessWidget {
  const FindTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppStyles.findTicketsColor,
      ),
      child: Center(
        child: Text(
          'find tickets',
          style: AppStyles.textStyle.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
