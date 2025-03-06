import 'package:flutter/material.dart';
import 'package:movie_app/helpers/context_extension.dart';
import 'package:movie_app/utils/assets.dart';
import 'package:movie_app/widgets/movie_details_poster_header.dart';

class MovieDetailsPoster extends StatelessWidget {
  const MovieDetailsPoster({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.45,
      width: double.infinity,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: Image.asset(Assets.imagesTest, fit: BoxFit.fill),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Align(
              alignment: Alignment.topCenter,
              child: MovieDetailsPosterHeader(),
            ),
          ),
        ],
      ),
    );
  }
}
