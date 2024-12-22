import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/app_routes.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const Hotel({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          AppRoutes.hotelDetail,
          arguments: {'hotel': hotel},
        );
      },
      child: Container(
        width: 0.55 * size.width,
        height: 350,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              margin: const EdgeInsets.only(bottom: 8),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/${hotel['image']}'),
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              hotel['place'],
              style: AppStyles.headLineStyle1.copyWith(color: Colors.amber),
            ),
            const SizedBox(height: 5),
            Text(
              hotel['destination'],
              style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 5),
            Text(
              '\$${hotel['price']}/night',
              style: AppStyles.headLineStyle1.copyWith(color: Colors.amber),
            ),
          ],
        ),
      ),
    );
  }
}
