import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(AppMedia.logo),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Book Tickets',
              style: AppStyles.headLineStyle1,
            ),
            Text(
              'Ho Chi Minh City',
              style: AppStyles.headLineStyle4,
            ),
            const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.amber[50],
                borderRadius: BorderRadius.circular(28),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppStyles.ticketBlue,
                    ),
                    child: const Icon(
                      FluentSystemIcons.ic_fluent_shield_filled,
                      color: Colors.white,
                      size: 14,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'Premium Status',
                    style: AppStyles.headLineStyle4
                        .copyWith(color: AppStyles.primaryColor),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Expanded(child: SizedBox()),
        Text(
          'Edit',
          style:
              AppStyles.headLineStyle4.copyWith(color: AppStyles.primaryColor),
        ),
      ],
    );
  }
}
