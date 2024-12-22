import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/screens/profile/widgets/record_item.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Accumulated kilometers', style: AppStyles.headLineStyle2),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Center(
                child: Text(
                  '123456',
                  style: AppStyles.headLineStyle1.copyWith(fontSize: 34),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Kilometers accrued',
                    style: AppStyles.headLineStyle4.copyWith(
                        color: AppStyles.primaryColor.withOpacity(0.8)),
                  ),
                  const Expanded(child: SizedBox()),
                  Text(
                    'Oct 11, 2024',
                    style: AppStyles.headLineStyle4.copyWith(
                        color: AppStyles.primaryColor.withOpacity(0.8)),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Divider(color: Colors.grey.shade400),
              const RecordItem(
                leftText: '23,042',
                rightText: 'Vietnam Airline',
              ),
              const RecordItem(
                leftText: '24',
                rightText: 'Vietjet Air',
              ),
              const RecordItem(
                leftText: '100,000',
                rightText: 'AirlineCO',
              ),
              const SizedBox(height: 10),
              Text(
                'How to get more kilometers',
                style: AppStyles.headLineStyle3
                    .copyWith(color: AppStyles.primaryColor),
              )
            ],
          ),
        ),

        // Center(child: Text('123456', style: AppStyles.headLineStyle1)),
      ],
    );
  }
}
