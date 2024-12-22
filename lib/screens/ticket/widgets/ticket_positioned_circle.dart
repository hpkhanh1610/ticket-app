import 'package:flutter/material.dart';

class TicketPositionedCircle extends StatelessWidget {
  final double top;
  final double? right;
  final double? left;

  const TicketPositionedCircle({
    super.key,
    required this.top,
    this.left,
    this.right,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      right: right,
      child: Container(
        width: 20,
        height: 20,
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          border: Border.all(),
          shape: BoxShape.circle,
        ),
        child: const CircleAvatar(backgroundColor: Colors.black),
      ),
    );
  }
}
