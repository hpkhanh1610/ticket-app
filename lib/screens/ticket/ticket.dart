import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_jsons.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layout_builder.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/screens/ticket/widgets/ticket_positioned_circle.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  var ticketData = ticketList[0];

  @override
  void didChangeDependencies() {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      ticketData = args['ticketData'];
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tickets',
          style: AppStyles.headLineStyle1.copyWith(fontSize: 33),
        ),
        backgroundColor: AppStyles.bgColor,
      ),
      backgroundColor: AppStyles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.all(20),
            children: [
              const AppTicketTabs(
                firstTabText: 'Upcoming',
                secondTabText: 'Previous',
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    TicketView(
                      ticket: ticketData,
                      fullScreen: true,
                      isColored: false,
                      isTicketScreen: true,
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(21),
                            bottomRight: Radius.circular(21)),
                      ),
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppColumnTextLayout(
                                firstLine: 'Flutter DB',
                                secondLine: 'Passenger',
                                crossAxisAlignment: CrossAxisAlignment.start,
                                isColored: false,
                              ),
                              AppColumnTextLayout(
                                firstLine: '5221 364879',
                                secondLine: 'passport',
                                crossAxisAlignment: CrossAxisAlignment.end,
                                isColored: false,
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          const AppLayoutBuilder(
                            randomDivider: 16,
                            width: 6,
                            isColored: false,
                          ),
                          const SizedBox(height: 20),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppColumnTextLayout(
                                firstLine: '123456789',
                                secondLine: 'Number of E-ticket',
                                crossAxisAlignment: CrossAxisAlignment.start,
                                isColored: false,
                              ),
                              AppColumnTextLayout(
                                firstLine: '7HF8KB',
                                secondLine: 'Booking code',
                                crossAxisAlignment: CrossAxisAlignment.end,
                                isColored: false,
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          const AppLayoutBuilder(
                            randomDivider: 16,
                            width: 6,
                            isColored: false,
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        AppMedia.visaCard,
                                        scale: 11,
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        '*** 1234',
                                        style: AppStyles.headLineStyle3,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 2),
                                  Row(
                                    children: [
                                      Text(
                                        'Payment method',
                                        style: AppStyles.headLineStyle4
                                            .copyWith(color: Colors.grey[600]),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const AppColumnTextLayout(
                                firstLine: '\$250',
                                secondLine: 'Price',
                                crossAxisAlignment: CrossAxisAlignment.end,
                                isColored: false,
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: BarcodeWidget(
                              data: 'https://pub.dev/packages/barcode_widget',
                              barcode: Barcode.code128(),
                              height: 100,
                              drawText: false,
                              color: AppStyles.textColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    TicketView(
                      ticket: ticketData,
                      fullScreen: true,
                      isTicketScreen: true,
                    ),
                  ],
                ),
              ),
            ],
          ),
          TicketPositionedCircle(top: size.height / 2, left: 20),
          TicketPositionedCircle(top: size.height / 2, right: 20),
        ],
      ),
    );
  }
}
