import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/screens/search/widgets/app_icon_text.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/screens/search/widgets/ticket_promotion.dart';
import 'package:ticket_app/screens/search/widgets/find_tickets.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height: 40),
          Text(
            'What are\nyou looking for?',
            style: AppStyles.headLineStyle1.copyWith(fontSize: 33),
          ),
          const SizedBox(height: 20),
          const AppTicketTabs(
            firstTabText: 'Airline Tickets',
            secondTabText: 'Hotels',
          ),
          const SizedBox(height: 20),
          const AppIconText(
            text: 'Departure',
            icon: Icons.flight_takeoff_rounded,
          ),
          const SizedBox(height: 20),
          const AppIconText(
            text: 'Arrival',
            icon: Icons.flight_land_rounded,
          ),
          const SizedBox(height: 20),
          const FindTickets(),
          const SizedBox(height: 40),
          AppDoubleText(
            bigText: 'Upcoming Flights',
            smallText: 'View all',
            func: () {},
          ),
          const SizedBox(height: 20),
          const TicketPromotion(),
        ],
      ),
    );
  }
}
