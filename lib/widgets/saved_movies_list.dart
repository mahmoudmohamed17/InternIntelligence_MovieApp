import 'package:flutter/material.dart';
import 'package:movie_app/utils/app_colors.dart';
import 'package:movie_app/utils/styles.dart';
import 'package:movie_app/widgets/saved_movie_item.dart';

class SavedMoviesList extends StatelessWidget {
  const SavedMoviesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemBuilder: (context, index) {
        return Dismissible(
          key: ValueKey(index),
          background: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.buttonColor,
            ),
            alignment: Alignment.center,
            child: Text(
              'Remove',
              style: AppStyles.regular16.copyWith(color: Colors.white),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: SavedMovieItem(),
          ),
        );
      },
    );
  }
}
