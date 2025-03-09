import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app/helpers/context_extension.dart';
import 'package:movie_app/helpers/movie_entity.dart';
import 'package:movie_app/utils/app_colors.dart';
import 'package:movie_app/utils/styles.dart';

class SavedMovieItem extends StatelessWidget {
  const SavedMovieItem({super.key, required this.movie});
  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: context.width),
      decoration: BoxDecoration(
        color: AppColors.lightPrimaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        height: context.height * 0.15,
        child: Row(
          spacing: 12,
          children: [
            SizedBox(
              width: context.width * 0.35,
              height: context.height * 0.15,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: CachedNetworkImage(
                  imageUrl: movie.poster,
                  errorWidget:
                      (context, url, error) => const Center(
                        child: Icon(
                          FontAwesomeIcons.exclamation,
                          color: Colors.red,
                        ),
                      ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              width: context.width * 0.45,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: Text(
                      movie.movieTitle,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyles.regular16.copyWith(color: Colors.white),
                    ),
                  ),
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: Text(
                      movie.type.first,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyles.regular14.copyWith(
                        color: AppColors.secondaryTextColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
