import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/utils/app_colors.dart';
import 'package:movie_app/utils/styles.dart';
import 'package:movie_app/widgets/expandable_text.dart';
import 'package:movie_app/widgets/movie_details_button.dart';

class MovieInfoAndButtons extends StatelessWidget {
  const MovieInfoAndButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.00),
      child: Column(
        children: [
          Text(
            textAlign: TextAlign.center,
            'Movie Name',
            style: AppStyles.bold24.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 4),
          Text(
            textAlign: TextAlign.center,
            '2019 · Action · 7.6 ⭐',
            style: AppStyles.regular14.copyWith(
              color: AppColors.secondaryTextColor,
            ),
          ),
          const SizedBox(height: 16),
          const MovieDetailsButton(),
          const SizedBox(height: 16),
         const ExpandableText(text: defaulMovieDesc, maxLength: 100,),
        ],
      ),
    );
  }
}
