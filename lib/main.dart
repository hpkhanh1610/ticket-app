import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';
import 'package:ticket_app/base/res/app_routes.dart';
import 'package:ticket_app/base/widgets/all_tickets.dart';
import 'package:ticket_app/screens/home/widgets/all_hotels.dart';
import 'package:ticket_app/screens/home/widgets/hotel_detail.dart';
import 'package:ticket_app/screens/ticket/ticket.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.homePage: (context) => BottomNavBar(),
        AppRoutes.allTickets: (context) => const AllTickets(),
        AppRoutes.ticketScreen: (context) => const TicketScreen(),
        AppRoutes.allHotels: (context) => const AllHotels(),
        AppRoutes.hotelDetail: (context) => const HotelDetail(),
      },
    );
  }
}
