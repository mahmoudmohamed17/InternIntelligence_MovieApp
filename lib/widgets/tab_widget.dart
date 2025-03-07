import 'package:flutter/material.dart';
import 'package:movie_app/models/category_tab_model.dart';
import 'package:movie_app/utils/app_colors.dart';
import 'package:movie_app/utils/styles.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({super.key, required this.isActive, required this.model});
  final bool isActive;
  final CategoryTabModel model;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 30,
      duration: const Duration(milliseconds: 250),
      decoration: BoxDecoration(
        color: isActive ? AppColors.buttonColor : AppColors.lightPrimaryColor,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 12),
      alignment: Alignment.center,
      child: Text(model.title, style: AppStyles.regular14.copyWith(color: Colors.white)),
    );
  }
}
