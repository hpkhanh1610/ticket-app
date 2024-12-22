import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/positioned_big_circle.dart';

class Reward extends StatelessWidget {
  const Reward({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppStyles.primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.lightbulb_circle,
                size: 50,
                color: Colors.white,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'You\'ve got a new reward',
                    style:
                        AppStyles.headLineStyle2.copyWith(color: Colors.white),
                  ),
                  Text(
                    'You have 99 flights in a year',
                    style:
                        AppStyles.headLineStyle4.copyWith(color: Colors.white),
                  ),
                ],
              )
            ],
          ),
        ),
        PositionedBigCircle(
          top: -40,
          right: -40,
          color: Colors.blue.shade900,
        ),
      ],
    );
  }
}
