import 'package:flutter/material.dart';

class PositionedBigCircle extends StatelessWidget {
  final double? top;
  final double? right;
  final Color color;
  const PositionedBigCircle({
    super.key,
    this.top,
    this.right,
    this.color = Colors.black12,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      right: right,
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          border: Border.all(width: 15, color: color),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
