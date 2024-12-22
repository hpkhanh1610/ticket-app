import 'package:flutter/material.dart';
import 'package:ticket_app/screens/search/widgets/app_tabs.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTabText;
  final String secondTabText;

  const AppTicketTabs({
    super.key,
    required this.firstTabText,
    required this.secondTabText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF4F6FD),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          AppTabs(appText: firstTabText, isActive: true),
          AppTabs(appText: secondTabText, isLeft: false),
        ],
      ),
    );
  }
}
