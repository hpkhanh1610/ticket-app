import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class RecordItem extends StatelessWidget {
  final String leftText;
  final String rightText;
  const RecordItem({
    super.key,
    required this.leftText,
    required this.rightText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                leftText,
                style: AppStyles.headLineStyle3,
              ),
              const Text('Kilometers'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                rightText,
                style: AppStyles.headLineStyle3,
              ),
              const Text('Received from'),
            ],
          ),
        ],
      ),
    );
  }
}
