import 'package:flutter/material.dart';
import 'package:movie_app/helpers/context_extension.dart';
import 'package:movie_app/utils/app_colors.dart';
import 'package:movie_app/utils/assets.dart';
import 'package:movie_app/utils/styles.dart';

class SavedMovieItem extends StatelessWidget {
  const SavedMovieItem({super.key});

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
                child: Image.asset(Assets.imagesTest, fit: BoxFit.fill),
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
                      'Movie Name',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyles.regular16.copyWith(color: Colors.white),
                    ),
                  ),
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: Text(
                      'Action, Adventure',
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
