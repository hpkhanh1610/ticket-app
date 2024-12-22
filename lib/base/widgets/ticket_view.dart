import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/app_routes.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layout_builder.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool fullScreen;
  final bool isColored;
  final bool isTicketScreen;
  const TicketView({
    super.key,
    required this.ticket,
    this.fullScreen = false,
    this.isColored = true,
    this.isTicketScreen = false,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        if (isTicketScreen) {
          return;
        }

        Navigator.pushNamed(
          context,
          AppRoutes.ticketScreen,
          arguments: {
            'ticketData': ticket,
          },
        );
      },
      child: SizedBox(
        width: size.width * 0.85,
        height: 179,
        child: Container(
          margin: EdgeInsets.only(right: fullScreen ? 0 : 16),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: isColored
                      ? AppStyles.ticketBlue
                      : AppStyles.ticketBgColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        TextStyleThird(
                          text: ticket['from']['code'],
                          isColored: isColored,
                        ),
                        Expanded(child: Container()),
                        BigDot(isColored: isColored),
                        Expanded(
                          child: Stack(
                            children: [
                              SizedBox(
                                height: 24,
                                child: AppLayoutBuilder(
                                  randomDivider: 6,
                                  width: isColored ? 3 : 0,
                                  isColored: isColored,
                                ),
                              ),
                              Center(
                                child: Transform.rotate(
                                  angle: 1.5,
                                  child: Icon(
                                    Icons.local_airport_rounded,
                                    color: isColored
                                        ? Colors.white
                                        : Colors.blue[300],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        BigDot(isColored: isColored),
                        Expanded(child: Container()),
                        TextStyleThird(
                          text: ticket['to']['code'],
                          isColored: isColored,
                        ),
                      ],
                    ),
                    const SizedBox(height: 3),
                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: TextStyleFourth(
                            text: ticket['from']['name'],
                            isColored: isColored,
                          ),
                        ),
                        Expanded(child: Container()),
                        TextStyleFourth(
                          text: ticket['flying_time'],
                          isColored: isColored,
                        ),
                        Expanded(child: Container()),
                        SizedBox(
                          width: 100,
                          child: TextStyleFourth(
                            text: ticket['to']['name'],
                            align: TextAlign.end,
                            isColored: isColored,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: isColored
                    ? AppStyles.ticketOrange
                    : AppStyles.ticketBgColor,
                child: Row(
                  children: [
                    const BigCircle(isRight: false),
                    Expanded(
                      child: AppLayoutBuilder(
                        randomDivider: 16,
                        width: 6,
                        isColored: isColored,
                      ),
                    ),
                    const BigCircle(isRight: true),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: isColored
                      ? AppStyles.ticketOrange
                      : AppStyles.ticketBgColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(isColored ? 21 : 0),
                    bottomRight: Radius.circular(isColored ? 21 : 0),
                  ),
                ),
                child: Row(
                  children: [
                    AppColumnTextLayout(
                      firstLine: ticket['date'],
                      secondLine: 'Date',
                      crossAxisAlignment: CrossAxisAlignment.start,
                      isColored: isColored,
                    ),
                    Expanded(child: Container()),
                    AppColumnTextLayout(
                      firstLine: ticket['departure_time'],
                      secondLine: 'Departure time',
                      isColored: isColored,
                    ),
                    Expanded(child: Container()),
                    AppColumnTextLayout(
                      firstLine: ticket['number'].toString(),
                      secondLine: 'Number',
                      crossAxisAlignment: CrossAxisAlignment.end,
                      isColored: isColored,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
