import 'package:flutter/material.dart';
import 'package:movie_app/helpers/movie_entity.dart';
import 'package:movie_app/helpers/routes.dart';
import 'package:movie_app/utils/app_colors.dart';
import 'package:movie_app/widgets/movie_details_view_body.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({super.key, required this.movie});
  static const String id = Routes.movieDetailsView;
  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: MovieDetailsViewBody(movie: movie,),
    );
  }
}
