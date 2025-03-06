import 'package:flutter/material.dart';
import 'package:movie_app/utils/styles.dart';
import 'package:movie_app/widgets/movies_list.dart';

class LatestMoviesWidget extends StatelessWidget {
  const LatestMoviesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.00),
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Latest Movies',
                style: AppStyles.semiBold20.copyWith(color: Colors.white),
              ),
              Text(
                'See all',
                style: AppStyles.regular14.copyWith(color: Colors.white),
              ),
            ],
          ),
          MoviesList(),
        ],
      ),
    );
  }
}
