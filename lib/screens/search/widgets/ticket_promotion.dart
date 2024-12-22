import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/positioned_big_circle.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: 420,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: size.width * 0.43,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 1,
                  spreadRadius: 2,
                )
              ],
            ),
            child: Column(
              children: [
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(AppMedia.planeSit),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  '20% discount on the early booking of this flight. Don\'t miss.',
                  style: AppStyles.headLineStyle2,
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    height: 204,
                    width: size.width * 0.43,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.teal[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Discount\nfor survey',
                          style: AppStyles.headLineStyle2
                              .copyWith(color: Colors.white),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Take the survey about our services and get discount',
                          style:
                              AppStyles.textStyle.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const PositionedBigCircle(
                    top: -40,
                    right: -35,
                  ),
                ],
              ),
              Container(
                height: 204,
                width: size.width * 0.43,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.orange[800],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Text(
                      'Take love',
                      style: AppStyles.headLineStyle2
                          .copyWith(color: Colors.white),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('😍', style: TextStyle(fontSize: 35)),
                        Text('🥰', style: TextStyle(fontSize: 50)),
                        Text('😘', style: TextStyle(fontSize: 35)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
