import 'package:flutter/material.dart';
import 'package:movie_app/utils/app_colors.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      height: 7,
      width: isActive ? 24 : 7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: isActive ? AppColors.buttonColor : AppColors.secondaryTextColor,
      ),
    );
  }
}
