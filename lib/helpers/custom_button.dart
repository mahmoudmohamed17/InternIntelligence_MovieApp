import 'package:flutter/material.dart';
import 'package:movie_app/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.label,
    this.onPressed,
    this.backGrdColor,
    this.icon,
  });
  final String label;
  final void Function()? onPressed;
  final Color? backGrdColor;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backGrdColor,
        elevation: 0,
        shadowColor: Colors.transparent,
        padding: const EdgeInsets.all(16),
      ),
      icon: Icon(icon, size: 18, color: Colors.white),
      label: Text(
        label,
        style: AppStyles.regular14.copyWith(color: Colors.white),
      ),
    );
  }
}
