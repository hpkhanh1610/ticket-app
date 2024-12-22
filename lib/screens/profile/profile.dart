import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/screens/profile/widgets/header.dart';
import 'package:ticket_app/screens/profile/widgets/info.dart';
import 'package:ticket_app/screens/profile/widgets/reward.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 30),
                const Header(),
                const SizedBox(height: 15),
                Divider(color: Colors.grey.shade400),
                const SizedBox(height: 15),
                const Reward(),
                const SizedBox(height: 30),
                const Info(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
