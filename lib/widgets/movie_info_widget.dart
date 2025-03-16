import 'package:flutter/material.dart';
import 'package:movie_app/helpers/movie_entity.dart';
import 'package:movie_app/utils/app_colors.dart';
import 'package:movie_app/utils/styles.dart';
import 'package:movie_app/widgets/expandable_text.dart';
import 'package:movie_app/widgets/movie_details_button.dart';

class MovieInfoAndButtons extends StatelessWidget {
  const MovieInfoAndButtons({super.key, required this.movie});
  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.00),
      child: Column(
        children: [
          Text(
            textAlign: TextAlign.center,
            movie.movieTitle,
            style: AppStyles.bold24.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 4),
          Text(
            textAlign: TextAlign.center,
            '${movie.releasYear.substring(0, 4)} · ${movie.type.toString().replaceAll('[', '').replaceAll(']', '')} · ${movie.rate} ⭐',
            style: AppStyles.regular14.copyWith(
              color: AppColors.secondaryTextColor,
            ),
          ),
          const SizedBox(height: 16),
          MovieDetailsButton(movie: movie),
          const SizedBox(height: 16),
          ExpandableText(text: movie.description, maxLength: 100),
        ],
      ),
    );
  }
}
