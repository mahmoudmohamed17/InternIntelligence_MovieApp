import 'package:flutter/material.dart';
import 'package:movie_app/widgets/movie_details_poster.dart';

class MovieDetailsViewBody extends StatelessWidget {
  const MovieDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [SliverToBoxAdapter(child: MovieDetailsPoster())],
    );
  }
}
