import 'package:flutter/material.dart';
import 'package:movie_app/widgets/dot_indicator.dart';

class DotsIndicatorWidget extends StatelessWidget {
  const DotsIndicatorWidget({super.key, required this.activeDot});
  final int activeDot;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        return Padding(
          padding: const EdgeInsets.only(right: 5),
          child: DotIndicator(isActive: activeDot == index),
        );
      }),
    );
  }
}
