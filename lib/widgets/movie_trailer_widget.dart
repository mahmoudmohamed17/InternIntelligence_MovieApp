import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/helpers/context_extension.dart';
import 'package:movie_app/utils/app_colors.dart';
import 'package:movie_app/utils/assets.dart';
import 'package:movie_app/utils/styles.dart';
import 'package:movie_app/widgets/movie_trailer_header.dart';

class MovieTrailerWidget extends StatelessWidget {
  const MovieTrailerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightPrimaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        spacing: 10,
        children: [
          SizedBox(
            width: context.width * 0.4,
            height: context.height * 0.20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(Assets.imagesTest, fit: BoxFit.fill),
            ),
          ),
          Expanded(
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MovieTrailerHeader(),
                Text(
                  defaulMovieDesc,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.regular14.copyWith(
                    color: AppColors.secondaryTextColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
