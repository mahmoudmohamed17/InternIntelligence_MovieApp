import 'package:flutter/material.dart';
import 'package:movie_app/helpers/routes.dart';
import 'package:movie_app/utils/app_colors.dart';
import 'package:movie_app/widgets/movie_details_view_body.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({super.key});
  static const String id = Routes.movieDetailsView;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: MovieDetailsViewBody(),
    );
  }
}
