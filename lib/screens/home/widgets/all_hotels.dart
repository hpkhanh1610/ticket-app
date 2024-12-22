import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/app_routes.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_jsons.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Hotels'),
        backgroundColor: AppStyles.bgColor,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          var hotel = hotelList[index];
          return HotelGridView(hotel: hotel);
        },
        itemCount: hotelList.length,
      ),
    );
  }
}

class HotelGridView extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const HotelGridView({
    super.key,
    required this.hotel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          AppRoutes.hotelDetail,
          arguments: {'hotel': hotel},
        );
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.2,
              child: Container(
                margin: const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/${hotel['image']}'),
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              hotel['place'],
              style: AppStyles.headLineStyle3.copyWith(color: Colors.amber),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotel['destination'],
                  style: AppStyles.headLineStyle4.copyWith(color: Colors.white),
                ),
                Text(
                  '\$${hotel['price']}/night',
                  style: AppStyles.headLineStyle4.copyWith(color: Colors.amber),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
