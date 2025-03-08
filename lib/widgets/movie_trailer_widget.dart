import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app/helpers/context_extension.dart';
import 'package:movie_app/helpers/movie_entity.dart';
import 'package:movie_app/utils/app_colors.dart';
import 'package:movie_app/utils/styles.dart';
import 'package:movie_app/widgets/movie_trailer_header.dart';

class MovieTrailerWidget extends StatelessWidget {
  const MovieTrailerWidget({super.key, required this.movie});
  final MovieEntity movie;

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
              child: CachedNetworkImage(
                imageUrl: movie.poster,
                fit: BoxFit.fill,
                errorWidget:
                    (context, url, error) =>
                        const Center(child: Icon(FontAwesomeIcons.exclamation)),
              ),
            ),
          ),
          Expanded(
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MovieTrailerHeader(),
                Text(
                  movie.description,
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
