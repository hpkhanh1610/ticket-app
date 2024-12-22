import 'package:flutter/material.dart';

class AppLayoutBuilder extends StatelessWidget {
  final int randomDivider;
  final double width;
  final bool isColored;

  const AppLayoutBuilder({
    super.key,
    required this.randomDivider,
    this.width = 3,
    this.isColored = true,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            (constraints.constrainWidth() / randomDivider).floor(),
            (index) => SizedBox(
              width: width,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: isColored ? Colors.white : Colors.grey[500],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
