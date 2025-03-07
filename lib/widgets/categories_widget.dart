import 'package:flutter/material.dart';
import 'package:movie_app/utils/styles.dart';
import 'package:movie_app/widgets/tabs_list.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key, required this.controller});
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.00),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          Text(
            'Categories',
            style: AppStyles.semiBold20.copyWith(color: Colors.white),
          ),
          TabsList(controller: controller),
        ],
      ),
    );
  }
}
