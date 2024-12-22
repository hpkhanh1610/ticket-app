import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/all_jsons.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All tickets'),
      ),
      body: ListView(
        children: [
          Column(
            children: ticketList.map(
              (ticket) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: TicketView(
                    ticket: ticket,
                    fullScreen: true,
                  ),
                );
              },
            ).toList(),
          ),
        ],
      ),
    );
  }
}
