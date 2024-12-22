import 'package:flutter/material.dart';

class AppTabs extends StatelessWidget {
  final String appText;
  final bool isLeft;
  final bool isActive;

  const AppTabs({
    super.key,
    required this.appText,
    this.isLeft = true,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.44,
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.transparent,
        borderRadius: isLeft
            ? const BorderRadius.horizontal(left: Radius.circular(50))
            : const BorderRadius.horizontal(right: Radius.circular(50)),
      ),
      child: Center(child: Text(appText)),
    );
  }
}
